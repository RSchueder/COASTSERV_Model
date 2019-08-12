'''
Query

Class that can create batch files for downloading data from CMEMS
'''
import os
import pandas as pd
import numpy as np 
import subprocess
import sys

class Query(object):

    def __init__(self, time_vect, dataset, coords, user, pwd, out):
        """
        Query class
        
        Arguments:
            time_vect {dictionary} -- {'t_start' : 'yyyyy-mm-dd 12:00:00',
                                       't_end'   : 'yyyy-mm-dd 12:00:00'}
            dataset {str} -- 'physchem' or' bio'
            coords {list} -- [xmin, xmax, ymin, ymax]
            user {str} -- username
            pwd {str} -- password
            out {str} -- path for output of batch files
        """
        
        self.time_vect  = time_vect
        self.dataset    = dataset
        self.coords     = coords
        self.user       = user
        self.pwd        = pwd
        self.out        = out

    def build_query(self):
        # to remove need to write self. in all of the functions that were previously not part of this class
        self.create_query(self.time_vect, self.dataset, self.coords, self.user, self.pwd, self.out)

    def create_query(self, time_vect, dataset, coords, user, pwd,out):

        '''
        writes the bat and sh files required to download the requested parameters from CMEMS
        only linux has capabilities to retry the download if it failed NOT YET COMPLETE
        '''

        # quarter of a year is a good size based on trial and error, but this depends on the extent!
        max_time = np.ceil(365/4)
        tot_time = pd.Timestamp(time_vect['t_end']) - pd.Timestamp(time_vect['t_start'])
        num_time_intervals = np.ceil(tot_time.days / max_time)

        if np.abs(coords[1] - coords[0]) * np.abs(coords[3] - coords[2]) > 858:
            print('WARNING: REQUESTED SPATIAL EXTENT MAY BE TOO BIG FOR SERVER. TRY REDUCING SPATIAL EXTENT')

        times = []
        for tt in range(0, int(num_time_intervals)):
            times.append([pd.Timestamp(time_vect['t_start']) + pd.Timedelta(days = int(max_time * tt)), pd.Timestamp(time_vect['t_start']) + pd.Timedelta(days = int(max_time * (tt+1)-1))])  

        datasets = {'physchem' : ['GLOBAL_REANALYSIS_PHY_001_030-TDS', 'global-reanalysis-phy-001-030-daily'],
                    'bio'      : ['GLOBAL_REANALYSIS_BIO_001_029-TDS', 'global-reanalysis-bio-001-029-daily']}

        all_subs = {'physchem' : ['thetao', 'bottomT' , 'so', 'zos', 'uo', 'vo'],
                    'bio'      : ['chl', 'o2','no3','po4','si']}

        subs = all_subs[dataset]

        args = {'motu'         : 'http://my.cmems-du.eu/motu-web/Motu', 
                'service-id'   : datasets[dataset][0], 
                'product-id'   : datasets[dataset][1], 
                'longitude-min': coords[0], 
                'longitude-max': coords[1], 
                'latitude-min' : coords[2], 
                'latitude-max' : coords[3], 
                'date-min'     : None, 
                'date-max'     : None, 
                'depth-min'    : '0.493', 
                'depth-max'    : '5727.918000000001', 
                'variable'     : None, 
                'out-dir'      : '"data\"', 
                'out-name'     : None, 
                'user'         : user, 
                'pwd'          : pwd}

        if not os.path.exists(out + args['out-dir'].replace('"','') + '\\'):
            os.mkdir(out + args['out-dir'].replace('"','') + '\\')
        
        ###############################################################################
        # WINDOWS
        ###############################################################################
        print('writing query')

        with open(os.getcwd() + '\\' + out + 'CMEMS_download_%s.bat' % dataset,'w') as bat:
            self.bat = os.getcwd() + '\\' + out + 'CMEMS_download_%s.bat' % dataset
            for sub in subs:
                for tt in range(0, int(num_time_intervals)):
                    bat.write('python -m motuclient ')
                    for arg in args.keys():
                            if arg == 'variable':
                                bat.write('--variable ' + sub + ' ')
                            elif arg == 'date-min':
                                bat.write('--date-min "' + str(times[tt][0]) + '" ')
                            elif arg == 'date-max':
                                bat.write('--date-max "' + str(times[tt][1]) + '" ')
                            elif arg == 'out-name':
                                bat.write('--out-name ' + sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc ')
                            else:
                                bat.write('--%s %s ' % (arg, args[arg]))
                    bat.write('\n timeout 10 \n')
            bat.write('\n pause')
        ###############################################################################
        # LINUX - EXPERIMENTAL
        ###############################################################################
        with open(os.getcwd() + '\\' + out + 'CMEMS_download_%s.sh' % dataset,'w') as shell:
            self.sh = os.getcwd() + '\\' + out + 'CMEMS_download_%s.sh' % dataset
            shell.write('#!/bin/bash\n')
            for sub in subs:
                for tt in range(0, int(num_time_intervals)):
                    shell.write('python -m motu-client ')
                    for arg in args.keys():
                            if arg == 'variable':
                                shell.write('--variable ' + sub + ' ')
                            elif arg == 'date-min':
                                shell.write('--date-min ' + str(times[tt][0]) + ' ')
                            elif arg == 'date-max':
                                shell.write('--date-max ' + str(times[tt][1]) + ' ')
                            elif arg == 'out-name':
                                shell.write('--out-name ' + sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc ')
                            else:
                                shell.write('--%s %s ' % (arg, args[arg]))
                    
                    out_name = args['out-dir'].replace('"','').replace('\\','/') + '/' + sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc '        
                    
                    # test for success of download
                    shell.write('\n')
                    shell.write('if [ ! -f "%s" ]; then\n' % out_name)
                    shell.write('   while (( ! -f "%s" ))\n' % out_name)
                    shell.write('   do\n')
                    shell.write('       echo "ERROR: download failed on server end, retrying..."\n')
                    shell.write('       echo "giving the server a break..."\n')
                    shell.write('       sleep 10s\n')
                    shell.write('       python -m motuclient ')
                    for arg in args.keys():
                            if arg == 'variable':
                                shell.write('--variable ' + sub + ' ')
                            elif arg == 'date-min':
                                shell.write('--date-min ' + str(times[tt][0]) + ' ')
                            elif arg == 'date-max':
                                shell.write('--date-max ' + str(times[tt][1]) + ' ')
                            elif arg == 'out-name':
                                shell.write('--out-name ' + sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc ')
                            else:
                                shell.write('--%s %s ' % (arg, args[arg]))
                    shell.write('   done\n')
                    shell.write('fi\n')                
            shell.write('\n pause')

        print('finished writing query')
    
    def send_request(self):
        """
        runs the created batch file
        """
        print('sending request via bat file')
        print(self.bat)
        with open(self.bat, 'r') as batfile:
            for command in batfile.readlines():
                if 'python' in command:
                    command.replace('python', '')
        p = subprocess.Popen(self.bat, shell = True, stdout=subprocess.PIPE)
        while True:
            out = p.stderr.read(1)
            if out == '' and p.poll() != None:
                break
            if out != '':
                sys.stdout.write(out)
                sys.stdout.flush()
        out, err = p.communicate()
        print(out, err)
        print('request processing finished')


class DCSM(Query):
    def __init__(self):
        time_vect  = {'t_start' : '2012-01-01 12:00:00',
                      't_end'   : '2013-01-01 12:00:00'}
        dataset    = 'physchem'
        coords     = [-16,16,40,65]
        user       = 'rschueder'
        pwd        = 'RudyCMEMS2017'
        out        = 'tests\\DCSM\\out\\'
        super().__init__(time_vect, dataset, coords, user, pwd, out)


class Guayaquil(Query):
    def __init__(self):
        time_vect  = {'t_start' : '2000-01-01 12:00:00',
                      't_end'   : '2002-01-01 12:00:00'}
        dataset    = 'bio'
        coords     = [-85, -75, -5, 1]
        user       = 'rschueder'
        pwd        = 'RudyCMEMS2017'
        out        = 'tests\\Guayaquil\\out\\'
        super().__init__(time_vect, dataset, coords, user, pwd, out)