'''
dfm boundary input file
'''
import glob
import netCDF4 as nc
from main_online import *

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
#data_list = glob.glob(r'd:\projects\DWAQ_CMEMS\CMEMS_download\data\*.nc')
data_list = glob.glob(r'd:\projects\CMEMS_DATA\*.nc')
# SUBFILE
# if DELWAQ, put path to substance file
sub = r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub'
# if DFM, use this list of parameters
#sub = ['salinity', 'temperature', 'ux', 'uy']

# MODELDIR/OUTDIR
model_dir = 'd:\\projects\\DWAQ_CMEMS\\test_out\\'

main_online(grd, ext, data_list, sub, model_dir)