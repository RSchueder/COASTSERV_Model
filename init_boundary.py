'''
dfm boundary input file
'''
import glob
import netCDF4 as nc
from main_boundary import *

###############################################################################
# INPUT
###############################################################################

# GRID FILE
grid = r'd:\projects\DWAQ_CMEMS\test_in\3D-DCSM\DCSM-FM_0_5nm_grid_20171101_depth_20181213_bedlevMiss_net.nc'

# EXT file
ext = r'd:\projects\DWAQ_CMEMS\test_in\3D-DCSM\A07_new.ext'

# CMEMS FILE
# TIME, DEPTH, LATITUDE, LONGITUDE
data_list = glob.glob(r'd:\projects\DWAQ_CMEMS\CMEMS_download\data\*.nc')
#data_list = glob.glob(r'd:\projects\CMEMS_DATA\*.nc')

# SUBFILE
# if DELWAQ, put path to substance file
#sub = r'p:\11201302-guayaquil\03_waterquality\03_baseCase\01_substances\guayas_V11.sub'

# if DFM, use this list of parameters
sub = ['salinity', 'temperature', 'uxuy']

# MODELDIR/OUTDIR
tref_model = datetime.datetime(2011,12,22,00,00,00)

model_dir = 'd:\\projects\\DWAQ_CMEMS\\test_out\\'

main_boundary(grid, ext, data_list, sub, tref_model, model_dir)