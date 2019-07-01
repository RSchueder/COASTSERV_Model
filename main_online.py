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
from units import mass_conversion, usefor
from functions import *

###############################################################################
# INPUT
###############################################################################

# GRID FILE
grid = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A08_newrgh_steric_dicoww_nest2\DCSM-FM_0_5nm_grid_20171101_depth_20181213_Ugrid_net.nc'
grd = nc.Dataset(grid)

# PLI FILES OF OPEN OCEAN BOUNDARIES
bndpli = [file for file in glob.glob(r'd:\projects\DWAQ_CMEMS\test\*.pli')]

# EXT file
ext = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A08_newrgh_steric_dicoww_nest2\A07_new.ext'

# CMEMS FILE
# TIME, DEPTH, LATITUDE, LONGITUDE
ds = nc.Dataset(r'p:\11201302-guayaquil\03_waterquality\01_data\CMEMS\global-reanalysis-bio-001-029-monthly_1547468931612.nc')

# SUBFILE
sub_file = r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub'

# ARRAY OF DEPTHS (NNODES, NLAYERS) = PERCENT OF DEPTH PER LAYER
deps = 1

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

boundary_index = {}
for bnd in bndpli:
    pli = read_pli(bnd)
    bnd = bnd[find_last(bnd,'\\'):]
    boundary_index[bnd] = np.zeros((len(pli),2))
    for ind, ii in enumerate(pli):
        # locind[ind] = pdistf(CM[:,0],CM[:,1],pli[ind,0],pli[ind,1])
        # we instead assume perefctly rectangular, which is what CMEMS is
        # this means for every X value there is some correspondig constant Y
        # and vice versa
        Xind = np.argmin(np.abs(pli[ind,0] - XCM))
        Yind = np.argmin(np.abs(pli[ind,1] - YCM))
        X = XCM[Xind]
        Y = YCM[Yind]
        boundary_index[bnd][ind,:] = np.array([Xind, Yind])

###############################################################################
# CREATE MATRIX OF VALUES FROM CMEMS and WRITE to BC FILE
###############################################################################
for bnd in boundary_index.keys():
    for sub in subs:
        if sub in usefor.keys():
            write_bcfile(sub, ds, depths, usefor, boundary_index, bnd, tref_model):
        else:
            print('WARNING: requested sub %s not in CMEMS dict, no boundary made!' % sub)

###############################################################################
# ADMINISTRATE PLI FILES AND EXT
###############################################################################

