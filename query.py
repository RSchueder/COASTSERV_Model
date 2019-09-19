'''
Query

Class that can create batch files for downloading data from CMEMS
'''
import os
import json
import pandas as pd
import numpy as np 
import subprocess
import sys

class Query(object):

    def __init__(self, time_vect, dataset, coords, credentials, out):
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

        with open(credentials) as cred_file:
            cred = json.load(cred_file)
            
        self.user       = cred['user']
        self.pwd        = cred['pwd']
        self.out        = out

    def build_query(self):
        # to remove need to write self. in all of the functions that were previously not part of this class
        self.create_query(self.time_vect, self.dataset, self.coords, self.user, self.pwd, self.out)

    def create_query(self, time_vect, dataset, coords, user, pwd, out):

        '''
        writes the bat and sh files required to download the requested parameters from CMEMS
        only linux has capabilities to retry the download if it failed NOT YET COMPLETE
        '''

        # quarter of a year is a good size based on trial and error, but this depends on the extent!
        # changed to 30 days based on communication with CMEMS
        #max_time = np.ceil(365/4)
        max_time = 30
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

        self.args = {'motu'         : 'http://my.cmems-du.eu/motu-web/Motu', 
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
                'out-dir'      : '"data"', 
                'out-name'     : None, 
                'user'         : user, 
                'pwd'          : pwd}

        if not os.path.exists(os.path.join(out, self.args['out-dir'].replace('"',''))):
            os.mkdir(os.path.join(out, self.args['out-dir'].replace('"','')))
        
        print('writing query')

        # WINDOWS

        self.bat = os.path.join(out, 'CMEMS_download_%s.bat' % dataset)

        with open(self.bat, 'w') as bat:
            for sub in subs:
                for tt in range(0, int(num_time_intervals)):
                    out_name = os.path.join(self.args['out-dir'].replace('"',''), sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc')        
                    file_name = sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc'

                    self.write_request(bat, sub, times, tt, out_name)

                    bat.write('\n')
                    bat.write('echo "download failed, giving the server a break..."\n')
                    bat.write('timeout 10\n')
                    bat.write(':chkretry\n')
                    bat.write('if not exist %s ( \n' % (os.path.join(os.getcwd(), out, out_name)))
                    bat.write('  ')
                    
                    self.write_request(bat, sub, times, tt, file_name)
                    
                    bat.write('\n  goto chkretry \n')
                    bat.write('  ) \n')
                  
        # LINUX 
        
        self.sh = os.path.join(out, 'CMEMS_download_%s.sh' % dataset)

        with open(self.sh,'w') as shell:
            shell.write('#!/bin/bash\n')
            for sub in subs:
                for tt in range(0, int(num_time_intervals)):
                    out_name = os.path.join(self.args['out-dir'].replace('"',''), sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc')        
                    file_name = sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc' 

                    self.write_request(shell, sub, times, tt, out_name)    
                    
                    shell.write('\n')
                    shell.write('if [ ! -f "%s" ]; then\n' % (os.path.join(os.getcwd(), out, out_name)))
                    shell.write('   while (( ! -f "%s" ))\n' % (os.path.join(os.getcwd(), out, out_name)))
                    shell.write('   do\n')
                    shell.write('       echo "ERROR: download failed on server end, retrying..."\n')
                    shell.write('       echo "giving the server a break..."\n')
                    shell.write('       sleep 10s\n')

                    self.write_request(shell, sub, times, tt, file_name)
                    
                    shell.write('\n')
                    shell.write('   done\n')
                    shell.write('fi\n')                

        print('finished writing query')
    

    def write_request(self, bat, sub, times, tt, out_name):
        bat.write('python -m motuclient ')
        for arg in self.args.keys():
                if arg == 'variable':
                    bat.write('--variable ' + sub + ' ')
                elif arg == 'date-min':
                    bat.write('--date-min "' + str(times[tt][0]) + '" ')
                elif arg == 'date-max':
                    bat.write('--date-max "' + str(times[tt][1]) + '" ')
                elif arg == 'out-name':
                    bat.write('--out-name ' + out_name + ' ')
                else:
                    bat.write('--%s %s ' % (arg, self.args[arg]))


    def send_request(self):
        if sys.platform == 'linux':
            self.send_request_linux()
        else:
            self.send_request_windows()


    def send_request_windows(self):
        """
        runs the created batch file
        """
        print('sending request via *.bat file')
        print(self.bat)
        path = os.getcwd()
        os.chdir(os.path.split(self.bat)[0])
        os.system(self.bat)
        print('request processing finished')
        os.chdir(path)


    def send_request_linux(self):
        """
        runs the created shell script
        """
        print('sending request via *.sh file')
        print('WARNING: will not work if sudo python environment variables are not the same as user')
        path = os.getcwd()

        print(self.sh)

        os.system('chmod 777 ' + self.sh)
        # will not work if sudo python environment variables are not the same as user
        os.chdir(os.path.split(self.bat)[0])

        #os.system('sudo ' + self.sh)
        os.system(self.sh)
        print('request processing finished')

        os.chdir(path)


class DCSM(Query):
    def __init__(self, dataset):
        time_vect   = {'t_start' : '2012-01-01 12:00:00',
                      't_end'   : '2013-01-01 12:00:00'}
        coords      = [-16,16,40,65]
        credentials = 'credentials.json'
        out         = os.path.join(os.getcwd(), 'tests','DCSM','out')
        super().__init__(time_vect, dataset, coords, credentials, out)


class Guayaquil(Query):
    def __init__(self, dataset):
        time_vect   = {'t_start' : '2000-01-01 12:00:00',
                      't_end'   : '2002-01-01 12:00:00'}
        coords      = [-85, -75, -5, 1]
        credentials = 'credentials.json'
        out         = os.path.join(os.getcwd(), 'tests','Guayaquil','out')
        super().__init__(time_vect, dataset, coords, credentials, out)


class Med(Query):
    def __init__(self, dataset):
        time_vect   = {'t_start' : '2017-05-15 12:00:00',
                       't_end'   : '2017-09-15 12:00:00'}
        coords = [0, 2, 39, 42]
        credentials = 'credentials.json'
        out         = os.path.join(os.getcwd(), 'tests','Med','out')
        super().__init__(time_vect, dataset, coords, credentials, out)
        

class HK(Query):
    def __init__(self, dataset):
        time_vect   = {'t_start' : '2016-01-01 12:00:00',
                       't_end'   : '2017-01-01 12:00:00'}
        coords = [105, 125, 17, 27]
        credentials = 'credentials.json'
        out         = os.path.join(os.getcwd(), 'tests','HK','out')
        super().__init__(time_vect, dataset, coords, credentials, out)