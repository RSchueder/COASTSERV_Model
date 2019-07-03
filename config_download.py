'''
@schueder July 2019

settings for downloading data from CMEMS
'''
import os
import pandas as pd
import numpy as np 

def config_download(time_vect, dataset, coords, user, pwd):
    ###############################################################################
    # MAIN
    ###############################################################################

    # quarter of a year is a good size based on trial and error
    max_time = np.ceil(365/4)
    tot_time = pd.Timestamp(time_vect['t_end']) - pd.Timestamp(time_vect['t_start'])
    num_time_intervals = np.ceil(tot_time.days / max_time)

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
            'depth-min'    : '0.5056', 
            'depth-max'    : '5902.058300000001', 
            'variable'     : None, 
            'out-dir'      : '"data\"', 
            'out-name'     : None, 
            'user'         : user, 
            'pwd'          : pwd}

    if not os.path.exists('CMEMS_download\\' + args['out-dir'].replace('"','') + '\\'):
        os.mkdir('CMEMS_download\\' + args['out-dir'].replace('"','') + '\\')

    with open(os.getcwd() +'\\CMEMS_download\\CMEMS_download_%s.bat' % dataset,'w') as bat:
        for sub in subs:
            for tt in range(0, int(num_time_intervals)):
                bat.write('python -m motuclient ')
                for arg in args.keys():
                        if arg == 'variable':
                            bat.write('--variable ' + sub + ' ')
                        elif arg == 'date-min':
                            bat.write('--date-min ' + str(times[tt][0]) + ' ')
                        elif arg == 'date-max':
                            bat.write('--date-max ' + str(times[tt][1]) + ' ')
                        elif arg == 'out-name':
                            bat.write('--out-name ' + sub + '_' + str(times[tt][0]).replace(':','-').replace(' ','_') + '_' + str(times[tt][1]).replace(':','-').replace(' ','_') + '.nc ')
                        else:
                            bat.write('--%s %s ' % (arg, args[arg]))
                bat.write('\n timeout 10 \n')
        bat.write('\n pause')

    with open(os.getcwd() + '\\CMEMS_download\\CMEMS_download_%s.sh' % dataset,'w') as shell:
        shell.write('#!/bin/bash')
        for sub in subs:
            for tt in range(0, int(num_time_intervals)):
                shell.write('python -m motuclient ')
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
        shell.write('\n pause')

