import datetime
import pandas as pd
import numpy as np 

time_vect = {'t_start' : '2012-01-01 12:00:00' ,
             't_end'   : '2014-01-01 12:00:00'}

# half a year is a good size based on trial and error
max_time = np.ceil(365/2)
tot_time = pd.Timestamp(time_vect['t_end']) - pd.Timestamp(time_vect['t_start'])
num_time_intervals = np.ceil(tot_time.days / max_time)

times = []
for tt in range(0, int(num_time_intervals)):
    times.append([pd.Timestamp(time_vect['t_start']) + pd.Timedelta(days = int(max_time * tt)), pd.Timestamp(time_vect['t_start']) + pd.Timedelta(days = int(max_time * (tt+1)-1))])  

subs = ['chl', 'o2','no3','po4','si']

args = {'motu'         : 'http://my.cmems-du.eu/motu-web/Motu', 
        'service-id'   : 'GLOBAL_REANALYSIS_BIO_001_029-TDS', 
        'product-id'   : 'global-reanalysis-bio-001-029-daily ', 
        'longitude-min': '-16', 
        'longitude-max': '16', 
        'latitude-min' : '40', 
        'latitude-max' : '65', 
        'date-min'     : None, 
        'date-max'     : None, 
        'depth-min'    : '0.5056', 
        'depth-max'    : '5902.058300000001', 
        'variable'     : None, 
        'out-dir'      : '"GEOCHEM_download\"', 
        'out-name'     : None, 
        'user'         : 'rschueder', 
        'pwd'          : 'RudyCMEMS2017'}

with open('download_CMEMS.bat','w') as bat:
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
                     bat.write('--out-name ' + sub + '_' + str(times[tt][0]) + '_' + str(times[tt][1]) + '.nc ')
                else:
                     bat.write('--%s %s ' % (arg, args[arg]))
            bat.write('\n \n')
    bat.write('\n pause')

