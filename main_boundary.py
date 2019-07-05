'''
@schueder July 2019

DFMWAQ ONLINE
Creates boundary conditions from CMEMS output for online or offline coupled DELWAQ runs
This function takes:
1. a grid
2. a boundary file *.ext, new format
3. a directory where CMEMS data was downloaed using download_config.py
4. a sub file

OFFLINE
- NOT IMPLEMENTED
'''
import os
import d3d
import glob
import datetime
import numpy as np 
import shutil as sh
import netCDF4 as nc 
from units import *
from modules import *

def main_boundary(grid, ext, data_list, subs, model_dir):
    ###############################################################################
    # MAIN
    ###############################################################################
    
    if isinstance(subs, str):
        subs = read_sub_file(subs)
    else:
        subs = subs

    boundaries = boundary_from_ext(ext)

    '''
    obtain long and lat from a single file based on the first file that is available
    they should all have been downloaded from the same script and thus all have the
    same spatial dimensions
    checks to make sure some file is found so some bc file can be written
    '''
    count = []
    sub_data_list = []
    for sub in subs:
        if sub in usefor.keys():
            csub = usefor[sub] # csub is name of sub in CMEMS nomenclature
            query = [file for file in data_list if csub['substance'] in file]
            sub_data_list.append(query)
            count.append(len(query))
        else:
            count.append(0)

    count = np.array(count)
    if sum(count) == 0:
        print('ERROR: cannot continue with boundary creation, no data files found for ANY variable')
        raise FileNotFoundError
    elif sum(count >0) > 0 and sum(count > 0) != len(subs):
        print('WARNING: no data files available for some variables, will try to continue')
        print('suspected missing subs:')
        for sind, ss in enumerate(subs):
            if count[sind] == 0:
                print(ss)
    else:
        print('Data files found for all variables')
    print(count)
    
    ind = count > 0
    for i, bol in enumerate(ind):
        if bol:
            match =  i
            break
    ind = match
    ds = nc.Dataset(sub_data_list[ind][0])
    XCM = ds.variables['longitude'][:]
    YCM = ds.variables['latitude'][:]
    ind = 0
    CM = np.zeros((len(XCM)*len(YCM),2))
    for ii in XCM:
        for jj in YCM:
            CM[ind,0] = ii
            CM[ind,1] = jj
            ind += 1

    tref_model = datetime.datetime(2000,1,1,0,0,0)

    ###############################################################################
    # FIND LAT/LONG INDEX PAIR FOR EACH SUPPORT POINT IN EACH PLI
    ###############################################################################

    for bnd in boundaries.keys():
        if boundaries[bnd]['type'] == 'waterlevelbnd':
            pli_loc = 'absolute'
            try:
                pli = read_pli(boundaries[bnd]['pli_loc'])
            except(FileNotFoundError):
                pli_loc = 'local'
                # could be local, so look in same folder as ext
                pli_dir = ext[:find_last(ext,'\\')-1]
                pli = read_pli(pli_dir + '\\' + boundaries[bnd]['pli_loc'])

            boundaries[bnd]['CMEMS_index'] = np.zeros((len(pli),2))
            # obtain indicies on CMEMS grid for all support points for all BND
            for ind, ii in enumerate(pli):
                # we instead assume perefctly rectangular, which is what CMEMS is
                # this means for every X value there is some correspondig constant Y
                # and vice versa
                Xind = np.argmin(np.abs(pli[ind,0] - XCM))
                Yind = np.argmin(np.abs(pli[ind,1] - YCM))
                Xdist = np.min(np.abs(pli[ind,0] - XCM))
                Ydist = np.min(np.abs(pli[ind,1] - YCM))
                if Xdist > 1.0 or Ydist > 1.0:
                    print('WARNING: closest CMEMS grid point more than 1 degree away from pli point %i on pli %s' %(ind, bnd))
                    print('ensure coordinates are lat/long')
                boundaries[bnd]['CMEMS_index'][ind,:] = np.array([Xind, Yind])

    ###############################################################################
    # CREATE MATRIX OF VALUES FROM CMEMS and WRITE to BC FILE
    ###############################################################################

    for bnd in boundaries.keys():
        if boundaries[bnd]['type'] == 'waterlevelbnd':
            for sub in subs:
                if sub in usefor.keys():
                    write_bcfile(model_dir, sub, data_list, boundaries, bnd, tref_model)
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
                        if pli_loc == 'absolute':
                            with open(boundaries[bnd]['pli_loc'],'r') as bndFile:
                                lines = bndFile.readlines()
                                for line in lines:
                                    pli.write(line.replace(bnd, bnd + sub))  
                        else:
                            #try:
                            with open(pli_dir + '\\' + boundaries[bnd]['pli_loc'], 'r') as bndFile:
                                lines = bndFile.readlines()
                                for line in lines:
                                    pli.write(line.replace(bnd, bnd + sub))     

                            #except(FileNotFoundError):
                            #    print('File not found, incorrect path parsed when reading *.ext')
                            #    print('attempt was at %s' % boundaries[bnd]['pli_loc'])
                        
                    # copy the original boundary pli as well for the hydrodynamic model
                    try:
                        sh.copyfile(boundaries[bnd]['pli_loc'], model_dir + boundaries[bnd]['pli_loc'][find_last(boundaries[bnd]['pli_loc'],'\\'):])
                    except(FileNotFoundError):
                        sh.copyfile(pli_dir + '\\' + boundaries[bnd]['pli_loc'], model_dir + boundaries[bnd]['pli_loc'])

    ###############################################################################
    # WRITE NEW EXT FILE CONTAINING THE CONSTITUENT BOUNDARIES
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
                            if sub in constituent_boundary_type.keys():
                                new_ext.write('quantity=%s\n' % constituent_boundary_type[sub]['type'])
                            else:
                                new_ext.write('quantity=tracerbnd%s\n' % sub)
                                
                            new_ext.write('locationfile=%s%s.pli\n' % (bnd,sub))
                            new_ext.write('forcingfile=%s.bc\n' % sub)
                            new_ext.write('\n')

        if isinstance(subs, str):
            # initials go in old style file
            # make sure the domain pol exists first!
            grd = nc.Dataset(grid)
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
