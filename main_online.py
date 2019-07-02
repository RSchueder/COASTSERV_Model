'''
Schueder July 2019

Creates boundary conditions from CMEMS output for online or offline coupled DELWAQ runs
This function takes:
start and satop time
1. a substance file
2. a series of pli files
3. a WAQ GEOM 

problem approach
ONLINE
1. PLI intersection - need to extract values at all locations intersecting the passed pli's
2. 

OFFLINE
'''
import os
import d3d
import glob
import datetime
import numpy as np 
import shutil as sh
import netCDF4 as nc 
from units import mass_conversion, usefor, ini
from functions import *

###############################################################################
# INPUT
###############################################################################

# GRID FILE
grid = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A08_newrgh_steric_dicoww_nest2\DCSM-FM_0_5nm_grid_20171101_depth_20181213_Ugrid_net.nc'
grd = nc.Dataset(grid)

# EXT file
ext = r'd:\projects\DWAQ_CMEMS\test_in\A07_new.ext'

# CMEMS FILE
# TIME, DEPTH, LATITUDE, LONGITUDE
ds = nc.Dataset(r'p:\11201302-guayaquil\03_waterquality\01_data\CMEMS\global-reanalysis-bio-001-029-monthly_1547468931612.nc')

# SUBFILE
sub_file = r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub'

# MODELDIR/OUTDIR
model_dir = 'd:\\projects\\DWAQ_CMEMS\\test_out\\'

###############################################################################
# MAIN
###############################################################################

subs = SubFile(sub_file)
boundaries = boundary_from_ext(ext)

XCM = ds.variables['longitude'][:]
YCM = ds.variables['latitude'][:]
ind = 0
CM = np.zeros((len(XCM)*len(YCM),2))
for ii in XCM:
    for jj in YCM:
        CM[ind,0] = ii
        CM[ind,1] = jj
        ind += 1

time = [datetime.datetime(1950,1,1,0,0,0) + datetime.timedelta(hours = int(tt)) for tt in ds.variables['time'][:]]
tref_model = datetime.datetime(2000,1,1,0,0,0)
depths  = ds.variables['depth'][:]

###############################################################################
# FIND LAT/LONG INDEX PAIR FOR EACH SUPPORT POINT IN EACH PLI
###############################################################################

for bnd in boundaries.keys():
    if boundaries[bnd]['type'] == 'waterlevelbnd':
        pli = read_pli(boundaries[bnd]['pli_loc'])
        boundaries[bnd]['CMEMS_index'] = np.zeros((len(pli),2))
        # obtain indicies on CMEMS grid for all support points for all BND
        for ind, ii in enumerat e(pli):
            # we instead assume perefctly rectangular, which is what CMEMS is
            # this means for every X value there is some correspondig constant Y
            # and vice versa
            Xind = np.argmin(np.abs(pli[ind,0] - XCM))
            Yind = np.argmin(np.abs(pli[ind,1] - YCM))
            X = XCM[Xind]
            Y = YCM[Yind]
            boundaries[bnd]['CMEMS_index'][ind,:] = np.array([Xind, Yind])

###############################################################################
# CREATE MATRIX OF VALUES FROM CMEMS and WRITE to BC FILE
###############################################################################

for bnd in boundaries.keys():
    if boundaries[bnd]['type'] == 'waterlevelbnd':
        for sub in subs:
            if sub in usefor.keys():
                write_bcfile(model_dir, sub, ds, time, usefor, boundaries, bnd, tref_model)
            else:
                print('WARNING: requested sub %s not in CMEMS dict, no boundary made!' % sub)

###############################################################################
# ADMINISTRATE ADDITIONAL PLI FILES AND ASSOCIATED NEW EXT
###############################################################################
for sub in subs:
    for ind, bnd in enumerate(boundaries.keys()):
        if 'waterlevelbnd' in boundaries[bnd]['type']:
            if sub in usefor.keys():
                # create a pli for every substance based on this existing pli
                with open(model_dir + '%s%s.pli' % (bnd,sub) ,'w') as pli:
                    # copy the existing pli but put the substance in the name
                    #try:
                    with open(boundaries[bnd]['pli_loc'],'r') as bndFile:
                        lines = bndFile.readlines()
                        for line in lines:
                            pli.write(line.replace(bnd, bnd + sub))    
                    #except:
                    #    print('File not found, incorrect path parsed when reading *.ext')
                    #    print('attempt was on %s' % boundaries[bnd]['pli_loc'])
                    
                # copy the original boundary pli as well for the hydrodynamic model
                sh.copyfile(boundaries[bnd]['pli_loc'],model_dir + boundaries[bnd]['pli_loc'][find_last(boundaries[bnd]['pli_loc'],'\\'):])
        
###############################################################################
# WRITE NEW EXT FILE CONTAINING THE WATER QUALITY/TRACER BOUNDARIES
###############################################################################

with open(ext,'r') as new_template:
    with open(model_dir + 'DFMWAQ.ext','w') as new_ext:
        # copy old boundaries
        for line in new_template.readlines():
            new_ext.write(line)
        for ind, bnd in enumerate(boundaries.keys()):
            if 'waterlevelbnd' in boundaries[bnd]['type']:
                # if it is waterlevel then it was involved in the previous steps
                for sub in subs:
                    if sub in usefor.keys():
                        new_ext.write('[boundary]\n')
                        new_ext.write('quantity=tracerbnd%s\n' % sub)
                        new_ext.write('locationfile=%s%s.pli\n' % (bnd,sub))
                        new_ext.write('forcingfile=%s.bc\n' % sub)
                        new_ext.write('\n')

    # initials go in old style file
    # make sure the domain pol exists first!
    x_min = np.min(grd.variables['mesh2d_node_x'][:])
    x_max = np.max(grd.variables['mesh2d_node_x'][:])
    y_min = np.min(grd.variables['mesh2d_node_y'][:])
    y_max = np.max(grd.variables['mesh2d_node_y'][:])

    with open(model_dir + 'domain.pol','w') as pol:
        pol.write('domain\n')
        pol.write('4   2\n')
        pol.write('%.4e    %.4e\n' % (x_min, y_min))
        pol.write('%.4e    %.4e\n' % (x_min, y_max))
        pol.write('%.4e    %.4e\n' % (x_max, y_max))
        pol.write('%.4e    %.4e\n' % (x_max, y_min))

    with open(model_dir + 'DFMWAQ_initials.ext','w') as old_ext:
        for sub in subs:
            old_ext.write('QUANTITY=initialtracer%s\n' % sub)
            old_ext.write('FILENAME=domain.pol\n')
            old_ext.write('FILETYPE=10\n')
            old_ext.write('METHOD=4\n')
            old_ext.write('OPERAND=O\n')
            if sub in ini.keys():
                old_ext.write('VALUE=%.4e\n' % ini[sub])
            else:
                old_ext.write('VALUE=0.0\n')
            old_ext.write('\n')
