# -*- coding: utf-8 -*-
"""
Created on Fri Apr 28 09:34:56 2017

@author: veenstra
"""
#script to merge netcdf file from several folders into one file (concatenate time dimension)

from netCDF4 import Dataset
import numpy as np
import glob
import datetime as dt
import os
import dateutil.relativedelta as rd
#dir_scripts = (os.path.dirname(os.path.realpath(__file__))) #F9 doesnt work, only F5 (F5 also only method to reload scripts)

mode = 'meteo'# 'meteo' 'meteo_heatflux'

# SETTINGS #############################

if mode == 'meteo':
    dir_data = 'P:\\1204257-dcsmzuno\\2014\\data\\meteo'
    subfolders = ['HIRLAM72_2011','HIRLAM72_2012','HIRLAM72_2013','HIRLAM72_2014','HIRLAM72_2015','HIRLAM72_2016','HIRLAM72_2017','HIRLAM72_2018','HIRLAM72_2019']
    ignorelist = ['P:\\1204257-dcsmzuno\\2014\\data\\meteo\\HIRLAM72_2016\\h72_2016_merged.nc']
    vars_orig = ['air_pressure_fixed_height','northward_wind','eastward_wind'] #voor meteo folder
    vars_dest = vars_orig
    convertKtoC = [0,0,0]
elif mode == 'meteo_heatflux':
    dir_data = 'P:\\1204257-dcsmzuno\\2014\\data\\meteo-heatflux'
    subfolders = ['HIRLAM72_2011','HIRLAM72_2012','HIRLAM72_2013','HIRLAM72_2014','HIRLAM72_2015','HIRLAM72_2016','HIRLAM72_2017','HIRLAM72_2018','HIRLAM72_2019']
    ignorelist = []
    vars_orig = ['dew_point_temperature','air_temperature','cloud_area_fraction'] #voor meteo-heatflux folder
    vars_dest = vars_orig
    convertKtoC = [1,1,0]
else:
    raise Exception('ERROR: wrong mode %s'%(mode))

dir_output = os.path.join(dir_data,'merged_netcdf_files')
if not os.path.exists(dir_output):
    os.makedirs(dir_output)

#########################################

find_startterm = 'h72'

all_tstart = dt.datetime(2011,12,1,00,00)
all_tstop = dt.datetime(2019,6,1,00,00)
all_refdate = dt.datetime(2012,1,1,00,00) #wordt ook doorgegeven aan netcdf units, in ieder geval textueel (maar er is hierdoor ook een datumkoppeling?)
all_tstart_netcdf = int(all_tstart.strftime('%Y%m'))
all_tstop_netcdf = int((all_tstop-dt.timedelta(days=1)).strftime('%Y%m'))
script_tstart = dt.datetime.now()

def maybe_encode(attin, encoding='ascii'):
    if hasattr(attin,'encode'):
        try:
            return attin.encode(encoding)
        except UnicodeEncodeError:
            return attin
    else:
        return attin        
       
# make a list of all unique inputfiles
list_filepaths=[]
for subfolder in subfolders:
    #print subfolder
    subfolder_contents = glob.glob(os.path.join(dir_data, subfolder, find_startterm+'*.nc'))
    [list_filepaths.append(x) for x in subfolder_contents]

for ign in ignorelist:
    try:
        del list_filepaths[list_filepaths.index(ign)]
    except ValueError:
        print('WARNING: value from ignorelist was not found')

list_files = []
for list_filepath in list_filepaths:
    if list_filepath[-9:-3] not in [x[-9:-3] for x in list_files] and int(list_filepath[-9:-3]) >= all_tstart_netcdf and int(list_filepath[-9:-3]) <= all_tstop_netcdf:
        list_files.append(list_filepath)
list_files.sort()
timedif = rd.relativedelta(all_tstop,all_tstart)
if len(list_files) != timedif.years*12+timedif.months:
    raise Exception('ERROR: no files found for some of the selected timesteps')
list_filesonly = [os.path.basename(x) for x in list_files] #wordt niet gebruikt


#creat t and dimension
all_tlen = int((all_tstop-all_tstart).total_seconds()/3600)+1
all_tdates = [all_tstart+dt.timedelta(x/24.) for x in range(all_tlen)]
all_tdates[-1]
all_tfromref = [(all_tdates[x]-all_refdate).total_seconds()/3600 for x in range(all_tlen)]


for iF in enumerate(list_files):
    filein_name = iF[1]
    print(filein_name)
    filein = Dataset(filein_name,'r',format="NETCDF3_CLASSIC")
    
    filein_tlen = filein.variables['time'].shape[0] #min 1?
    filein_datestamp = filein_name[filein_name.find(find_startterm)+4:filein_name.find(find_startterm)+4+6]
    filein_tstart = dt.datetime.strptime(filein_datestamp,'%Y%m')
    filein_tdates = [filein_tstart+dt.timedelta(x/24.) for x in range(filein_tlen)]
    
    filein_tfromref = [(filein_tdates[x]-all_refdate).total_seconds()/3600 for x in range(filein_tlen)]
    all_tid_start = all_tdates.index(filein_tdates[0])
    all_tid_stop = all_tdates.index(filein_tdates[-1])
    
    filein_times_toall = all_tfromref[all_tid_start:all_tid_stop+1]
    filein_times = filein.variables['time']
    filein_var0 = filein.variables[vars_orig[0]]
    filein_var1 = filein.variables[vars_orig[1]]
    filein_var2 = filein.variables[vars_orig[2]]

    if iF[1] == list_files[0]: #read variables and create output netcdf file
        #read also lat and lon
        filein_x = filein.variables['x']
        filein_y = filein.variables['y'] #these are varin objects
        filein_varkeys = [x.encode('ascii').decode('utf-8') for x in filein.variables.keys()]
        print(filein_varkeys)
        #filein_dimkeys = [x.encode('ascii').decode('utf-8') for x in filein_data.dimensions.keys()]
        #print(filein_dimkeys)
        for iV in range(len(filein_varkeys)):
            print(filein_varkeys[iV])
            print(filein.variables[filein_varkeys[iV]].shape)
        
        #create new netcdf with dimensions of merged
        outputfile = os.path.join(dir_output, find_startterm+'_%itm%i_%s.nc'%(all_tstart_netcdf,all_tstop_netcdf,mode))
        print('write new nc file (first allocates all dataspace on disk, before filling it, and therefore will stick on step 1 for a while)')
        if os.path.isfile(outputfile):
            raise Exception('file already exists: %s'%(outputfile))
        fileout = Dataset(outputfile,'w')
        fileout.Conventions = 'CF-1.6' #does this work?
        #fileout.set_fill_off()
        
        #define dimensions
        dim_t_name = 'time'
        dim_t = fileout.createDimension(dim_t_name,all_tlen)
        dim_x = fileout.createDimension('dim_x',filein_x.shape[0])
        dim_y = fileout.createDimension('dim_y',filein_x.shape[1])
        
        time = fileout.createVariable('time',np.float64,(dim_t_name,))
        x = fileout.createVariable('x',np.float32,('dim_x','dim_y'))
        y = fileout.createVariable('y',np.float32,('dim_x','dim_y'))
        fileout_var0 = fileout.createVariable(vars_dest[0],np.float32,(dim_t_name,'dim_x','dim_y'))
        fileout_var1 = fileout.createVariable(vars_dest[1],np.float32,(dim_t_name,'dim_x','dim_y'))
        fileout_var2 = fileout.createVariable(vars_dest[2],np.float32,(dim_t_name,'dim_x','dim_y'))
        #fileout_vars = [x.encode('ascii') for x in fileout.variables.keys()]
        #print(fileout_vars)
        
        
        #create attributes. or better,copy attributes from source netcdf            
        time.setncatts({k:maybe_encode(filein_times.getncattr(k)) for k in filein_times.ncattrs()})
        time.setncatts({filein_times.ncattrs()[0]:maybe_encode(u'%s'%(all_refdate.strftime('%d-%b-%Y %H:%M:%S')))})
        time.setncatts({filein_times.ncattrs()[1]:maybe_encode(u'Time - hours since %s +00:00'%(all_refdate.strftime('%Y-%m-%d %H:%M:%S')))})
        time.setncatts({filein_times.ncattrs()[4]:maybe_encode(u'hours since %s +00:00'%(all_refdate.strftime('%Y-%m-%d %H:%M:%S')))})
        #print({k:maybe_encode(time.getncattr(k)) for k in time.ncattrs()})       
        x.setncatts({k:maybe_encode(filein_x.getncattr(k)) for k in filein_x.ncattrs()})
        y.setncatts({k:maybe_encode(filein_y.getncattr(k)) for k in filein_y.ncattrs()})
        fileout_var0.setncatts({k:maybe_encode(filein_var0.getncattr(k)) for k in filein_var0.ncattrs()})
        if convertKtoC[0] == 1:
            fileout_var0.setncatts({k:maybe_encode('C') for k in ['units']})
        fileout_var1.setncatts({k:maybe_encode(filein_var1.getncattr(k)) for k in filein_var1.ncattrs()})
        if convertKtoC[1] == 1:
            fileout_var1.setncatts({k:maybe_encode('C') for k in ['units']})
        fileout_var2.setncatts({k:maybe_encode(filein_var2.getncattr(k)) for k in filein_var2.ncattrs()})
        if convertKtoC[2] == 1:
            fileout_var2.setncatts({k:maybe_encode('C') for k in ['units']})
        
        #write variables that don't change in time
        x[:,:] = filein_x[:]
        y[:,:] = filein_y[:]
        time[:] = np.array(all_tfromref)
    
    #no need to delete fill Values, fill Value attribute is included now.
    print('step %i of %i. file = %s. var1/3'%(iF[0]+1,len(list_files),filein_name[-13:]))
    if convertKtoC[0] == 1:
        fileout_var0[all_tid_start:all_tid_stop+1,:,:] = filein_var0[:]-273.15
    else:
        fileout_var0[all_tid_start:all_tid_stop+1,:,:] = filein_var0[:]
    print('step %i of %i. file = %s. var2/3'%(iF[0]+1,len(list_files),filein_name[-13:]))
    if convertKtoC[1] == 1:
        fileout_var1[all_tid_start:all_tid_stop+1,:,:] = filein_var1[:]-273.15
    else:
        fileout_var1[all_tid_start:all_tid_stop+1,:,:] = filein_var1[:]
    print('step %i of %i. file = %s. var3/3'%(iF[0]+1,len(list_files),filein_name[-13:]))
    if convertKtoC[2] == 1:
        fileout_var2[all_tid_start:all_tid_stop+1,:,:] = filein_var2[:]-273.15
    else:
        fileout_var2[all_tid_start:all_tid_stop+1,:,:] = filein_var2[:]
    filein.close()
    
    
fileout.close()

script_telapsed = (dt.datetime.now()-script_tstart).total_seconds()/60
print('elapsed time: %.2f hours'%(script_telapsed/60))
print('elapsed time: %.2f minutes'%(script_telapsed))
#"""

#f = open(os.path.join(dir_data,'KLAAR.txt'),'w')
#f.close()
