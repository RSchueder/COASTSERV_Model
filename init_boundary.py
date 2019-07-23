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
grid = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A12_fix2_CMEMS\DCSM-FM_0_5nm_grid_20171101_depth_20181213_bedlevMiss_net.nc'

# EXT file
ext = r'p:\1204257-dcsmzuno\2013-2017\3D-DCSM-FM\A12_fix2_CMEMS\A07_new.ext'
# CMEMS FILE
# TIME, DEPTH, LATITUDE, LONGITUDE
data_list = glob.glob(r'd:\projects\DWAQ_CMEMS\CMEMS_download\data\*.nc')

# SUBFILE
# if DELWAQ, put path to substance file
#sub = r'p:\11202512-h2020_impaqt\03_waterquality\02_modelSetup\01_substances\NZB_V5_basic_marine.sub'

# if DFM, use this list of parameters
sub = ['salinity', 'temperature', 'uxuy', 'steric']

# MODELDIR/OUTDIR - where model will be built
tref_model = datetime.datetime(2011,12,22,00,00,00)

model_dir = 'p:\\1204257-dcsmzuno\\2013-2017\\3D-DCSM-FM\\A12_fix2_CMEMS\\'

main_boundary(grid, ext, data_list, sub, tref_model, model_dir)