import coastserv.models.utils as utils
import netCDF4 as nc
import matplotlib.pyplot as plt
import numpy as np
import pylab

plt.close('all')
plt.rcParams["figure.figsize"] = [11, 8.5]

file_time = '2009-08-01_12-00-00_2009-08-07_12-00-00'

pli_file = r'd:\projects\COASTSERV_Model\app\coastserv\static\out\test1\OB_all_20181108.pli'
bc_file = r'd:\projects\COASTSERV_Model\app\coastserv\static\out\test1\XXX_OB_all_20181108.bc'

cmems_file = r'd:\projects\COASTSERV_Model\app\coastserv\static\out\test1\data\XXX_%s.nc' % file_time
out = 'd:\\projects\\COASTSERV_Model\\app\\coastserv\\static\\out\\test1\\data\\'

lims = {'salinity' : [34, 36],
        'temperature' : [10, 20]}

variables = ['so','thetao']

times = [0, 6, 0, 6]
depths = [0, 0, 15, 15]

for sub_ind, sub in enumerate(lims.keys()):
    boundary = utils.read_bc(pli_file, bc_file.replace('XXX', sub))
    cmems = nc.Dataset(cmems_file.replace('XXX',variables[sub_ind]))
    for sp in range(0,4):
        plt.figure()
        
        # CMEMS
        C = cmems.variables[variables[sub_ind]][times[sp],depths[sp],:,:]
        x = cmems.variables['longitude'][:]
        y = cmems.variables['latitude'][:]
        meshX, meshY = np.meshgrid(x, y)
        plt.pcolormesh(meshX, meshY, C, cmap = 'jet')
        plt.clim(lims[sub])
        
        # MODEL
        val = boundary['%sbnd' % sub][len(boundary['zprofile']) -1 - depths[sp], :, times[sp]]
        x = boundary['coordinates'][:,0]
        y = boundary['coordinates'][:,1]
        plt.scatter(x, y, 30, val, edgecolor = 'k', cmap = 'jet')
        plt.clim(lims[sub])
        plt.colorbar()
    
        plt.gca().set_aspect('equal', adjustable='box')
        plt.title(sub + ' ' + str(boundary['zprofile'][len(boundary['zprofile']) -1 - depths[sp]]) + 'm ' + str(boundary['times'][times[sp]]))
        pylab.savefig(out + sub + ' ' + str(boundary['zprofile'][len(boundary['zprofile']) -1 - depths[sp]]) + 'm ' + str(boundary['times'][times[sp]]).replace(':','') + '.png', dpi = 200)
       