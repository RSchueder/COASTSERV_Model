'''
Model

A class that can create boundary conditions from CMEMS
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

class Model(object):

    def __init__(self, ext, data_list, sub, tref, model_dir):
        """
        Model class
        
        Arguments:
            ext {str} -- ext file produced from Tide.initiate_tide()
            data_list {str} -- path to location of downloaded CMEMS *.nc files
            sub {str/list} -- path to sub file, or list of constituents from ['salinity', 'temperature', 'uxuy', 'steric']
            tref {datetime.datetime} -- datetime.datetime(yyyy,mm,dd,hh,MM,SS)
            model_dir {str} -- path to output
        """
        
        self.ext       = ext
        self.data_list = glob.glob(data_list)
        self.sub       = sub
        self.tref      = tref
        self.dir       = model_dir

    def initiate_boundary(self):
        # to remove need to write self. in all of the functions that were previously not part of this class
        self.make_boundary(self.ext, self.data_list, self.sub, self.tref, self.dir)

    def make_boundary(self, ext, data_list, subs, tref_model, model_dir, grid = None):
        """creates bc files, pli files, and possibly initial conditions for FM constituents
        
        Arguments:
            ext {[str]} -- [path to ext file containing waterlevel boundaries]
            data_list {[str]} -- [path for location of downloaded data]
            subs {[str/list]} -- [if str is path to sub file, if list is list of strings of physchem constituents]
            tref_model {[datetime.datetime]} -- [reference time for model]
            model_dir {[str]} -- [path for model output]
        
        Keyword Arguments:
            grid {[str]} -- [path to _net.nc file, necessary for initial conditions] (default: {None})
        """
        
        if isinstance(subs, str):
            subs = read_sub_file(subs)
        else:
            subs = subs

        # parse ext file to get boundaries dictionary
        boundaries = boundary_from_ext(ext)

        # return a file that can be representative of all files to get meta data
        match = self.check_files(subs, usefor, data_list)

        ds = nc.Dataset(match)
        # add meta data
        boundaries = self.get_boundary_index(ds, boundaries, ext)

        # extracts data from files as necessary, and writes to .bc file
        self.process_bc(subs, usefor, boundaries, data_list, tref_model, model_dir)

        # makes new pli files for the new boundaries
        self.write_pli(subs, boundaries, usefor, model_dir)

        # makes a copy of the passed ext file and appends the new boundaries
        self.write_new_ext_file(ext, model_dir, boundaries, subs, usefor)

    def check_files(self, subs, usefor, data_list):
        """
        from the list of requested subs and the location of the files, find out
        how complete the data list is, and find one file that can be representative
        
        Arguments:
            subs {str/list} -- [description]
            usefor {dict} -- [description]
            data_list {list} -- [description]
        """

        count = []
        sub_data_list = []
        for sub in subs:
            if sub in usefor.keys():
                csub = usefor[sub] # csub is name of sub in CMEMS nomenclature
                query = [file for file in data_list if csub['substance'][0] in file]
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
        print('subs:')
        print(subs)
        print('# of files available:')
        print(count)
        
        # find the first substance that has a data file so the geometry can be extracted a single time
        ind = count > 0
        for i, bol in enumerate(ind):
            if bol:
                match =  i
                break

        return sub_data_list[match][0]


    def get_boundary_index(self, ds, boundaries: dict, ext):
        """
        returns the passed boundaries dictionary with the corresponding xy and CMEMS index per point added
        
        Arguments:
            ds {nectCDF4 dataset} -- [description]
            boundaries {dict} -- [description]
            ext {[str]} -- [description]
        
        """

        XCM = ds.variables['longitude'][:]
        YCM = ds.variables['latitude'][:]
        
        # Iterating over the boundaries
        for bnd in boundaries.keys():
            if boundaries[bnd]['type'] == 'waterlevelbnd':
                boundaries, pli = self.update_pli_loc(boundaries, bnd, ext)
                boundaries[bnd]['CMEMS_index'] = np.zeros((len(pli),2))
                boundaries[bnd]['coords']      = np.zeros((len(pli),2))
                # obtain indicies on CMEMS grid for all support points for all BND
                for ind, ii in enumerate(pli):
                    # we  assume perefctly rectangular, which is what the CMEMS grid is
                    # this means for every X value there is some corresponding constant Y
                    # and vice versa
                    Xind = np.argmin(np.abs(pli[ind,0] - XCM))
                    Yind = np.argmin(np.abs(pli[ind,1] - YCM))
                    Xdist = np.min(np.abs(pli[ind,0] - XCM))
                    Ydist = np.min(np.abs(pli[ind,1] - YCM))
                    if Xdist > 1.0 or Ydist > 1.0:
                        print('WARNING: closest CMEMS grid point more than 1 degree away from pli point %i on pli %s' %(ind, bnd))
                        print('ensure coordinates are lat/long')
                    boundaries[bnd]['CMEMS_index'][ind,:] = np.array([Xind, Yind])
                    boundaries[bnd]['coords'][ind,:] = np.array([pli[ind,0], pli[ind,1]])
                
        return boundaries

    def update_pli_loc(self, boundaries, bnd, ext):
        """
        make sure location of pli is readable and return an array of that pli

        Arguments:
            boundaries {[type]} -- [description]
            bnd {[type]} -- [description]
            ext {[type]} -- [description]
        """

        pli_loc_key = 'pli_loc'
        # assume absolute path to begin with
        try:
            pli = read_pli(boundaries[bnd][pli_loc_key])
        except(FileNotFoundError):
            # could be local, so look in same folder as ext
            pli_dir = ext[:find_last(ext,'\\')-1]
            try:
                boundaries[bnd][pli_loc_key] = pli_dir + '\\' + boundaries[bnd][pli_loc_key]
                pli = read_pli(boundaries[bnd][pli_loc_key])
            except(FileNotFoundError):
                print('No absolute path to pli provided and pli not located in local folder. Please copy the pli to the local folder')
                raise

        return boundaries, pli

 
    def process_bc(self, subs, usefor, boundaries, data_list, tref_model, model_dir):
        """
        CREATE MATRIX OF VALUES FROM CMEMS and WRITE to BC FILE FOR ALL MODEL PARAMETERS

        Arguments:
            subs {[type]} -- [description]
            usefor {[type]} -- [description]
            boundaries {[type]} -- [description]
            data_list {[type]} -- [description]
            tref_model {[type]} -- [description]
            model_dir {[type]} -- [description]
        """

        for bnd in boundaries.keys():
            if boundaries[bnd]['type'] == 'waterlevelbnd':
                # waterlevel because an ocean boundary should be waterlevel
                for sub in subs:
                    if sub in usefor.keys():
                        # modules
                        self.write_bcfile(sub, usefor, data_list, boundaries, bnd, tref_model, model_dir)
                    else:
                        print('WARNING: requested sub %s not in CMEMS dict, no boundary made!' % sub)


    def write_bcfile(self, sub, usefor, data_list, boundaries, bnd, tref_model, out_dir):
        '''
        write the bc file for a single sub, calling preamble function and writing values at all depths for all times
        '''
        csub = usefor[sub] # csub is name of sub in CMEMS nomenclature
        full_data_list = data_list
        data_list = []
        for part_sub in csub['substance']:
            data_list.append([file for file in full_data_list if part_sub in file])

        if len(data_list) == 0:
            print('ERROR: cannot continue with boundary creation, no data files found for this variable')
            print('variable = %s (called %s in CMEMS) skipped' % (sub, csub['substance']))

        else:
            with open('%s%s.bc' % (out_dir, sub),'w') as bcfile:

                # get depths from first file rather than from every file
                # this is necessary to write preamble
                print('substance: %s' % sub)
                print('reading data...')

                times, depths, data, fill = self.read_nc_data(data_list, boundaries, bnd, csub, False)

                print('finished reading data')
                print('writing file...')

                # for every position, go through all the data files and read data at the space index
                for position in range(0, len(boundaries[bnd]['CMEMS_index'])):

                    self.write_bc_preamble(bcfile, bnd, position, sub, depths, tref_model)

                    for tind, tt in enumerate(times):
                        tdiff = tt - tref_model
                        bcfile.write(str((tdiff.seconds / 60) + (tdiff.days * 1440)))
                        bcfile.write('  ')
                        valid = 0.0
                        #for dind, depth in enumerate(depths):
                        # FLIP THE ARRAY?
                        for dind, depth in enumerate(depths):
                            for part_sub in csub['substance']:
                                try:
                                    val = data[part_sub][tind, dind, position]
                                except(IndexError):
                                    # steric
                                    val = data[part_sub][tind, position]

                                if val == fill or np.isnan(val):
                                    val = valid
                                else:
                                    valid = val
                                bcfile.write('%.4e' % (val * csub['conversion']))
                                bcfile.write('  ')
                        bcfile.write('\n')
                print('finished writing %s boundary for position %i/%i in boundary %s' % (sub, position+1, len(boundaries[bnd]['CMEMS_index']), bnd))
                gc.collect()


    def read_nc_data(self, data_list, boundaries, bnd, csub, interp):
        '''
        reads each file belonging to a substance one by one, storing the data per position in a tensor
        this will be returned so it can be writen to a file
        The stratey tries to reduce the number of total times nc file handles are switched
        the alternative strategy was to do the writing point by point, meaning each nc file would be 
        read as many times as there are support points. Now they are only read once each, with the
        data being stored for later use.
        '''

        times, depths, fill = self.get_sub_shared_data(data_list, csub)
        # not sure what order the times will be in, so we sort them
        times.sort()
        # 1950 01 01 is the reference time for CMEMS
        times = np.array([datetime.datetime(1950,1,1,0,0,0) + datetime.timedelta(hours = int(tt)) for tt in times])
        meta = {'depths' : depths, 'times': times}
        data = {}

        # allocate array
        for part_sub in csub['substance']:
            if len(meta['depths']) > 1:
                # if 3D
                data[part_sub] = np.zeros((len(meta['times']), len(meta['depths']), len(boundaries[bnd]['CMEMS_index'])))
            else:
                # if 2D
                data[part_sub] = np.zeros((len(meta['times']), len(boundaries[bnd]['CMEMS_index'])))

        for part_sub_i, part_sub in enumerate(csub['substance']):
            for file_index, data_file in enumerate(data_list[part_sub_i]):
                print('reading data file ' + data_file[find_last(data_file,'\\'):])
                ds = nc.Dataset(data_file, 'r')
                times = np.array([datetime.datetime(1950,1,1,0,0,0) + datetime.timedelta(hours = int(tt)) for tt in ds.variables['time'][:]])
                for position in range(0, len(boundaries[bnd]['CMEMS_index'])):
                    st = datetime.datetime.now()

                    # find index in times array that this subsection of time best matches and insert data in that slice later
                    t_index = np.argmin(abs(meta['times'] - times[0]))
                    # read all times and depths for this file
                    # TIME, DEPTH, LAT, LONG
                    # an interpolation step should be included here perhaps
                    if len(meta['depths']) > 1:
                        if interp:
                            arr = self.get_interp_array(boundaries, bnd, position, times, depths, 3)
                        else:
                            arr = ds.variables[part_sub][:, :, int(boundaries[bnd]['CMEMS_index'][position,1]), int(boundaries[bnd]['CMEMS_index'][position,0])]
                            arr.mask = False
                        if isinstance(arr, list):
                            arr = np.array(arr)
                            if arr.shape[0] != len(times):
                                arr = arr.T

                        arr = arr.squeeze()
                        data[part_sub][t_index:t_index+len(times), :, position] = arr
                    else:
                        # steric
                        arr = ds.variables[part_sub][:, int(boundaries[bnd]['CMEMS_index'][position,1]), int(boundaries[bnd]['CMEMS_index'][position,0])]
                        arr = arr.squeeze()
                        arr.mask = False
                        data[part_sub][t_index:t_index+len(times), position] = arr
                    
                    et = datetime.datetime.now()
                    print(part_sub + ' position ' + str(position) + ' read took ' + str((et - st).seconds) + ' seconds on time block ' + str(file_index + 1) + '/' + str(len(data_list[part_sub_i])))

        return meta['times'], depths, data, fill

    def get_sub_shared_data(self, data_list, csub):
        '''
        look through all of a substance's files and make a time and depth array
        '''
        times = np.array([])

        # first get all times and the depth, where the associated data will be filled incrementally
        for file_index, data_file in enumerate(data_list[0]):
            # it is assumed all variables in csub to make a model sub have the same file sizes
            ds = nc.Dataset(data_file, 'r')
            if file_index == 0:
                try:
                    depths = ds.variables['depth'][:]
                except:
                    # 2D file
                    depths = [0]
            file_time = ds.variables['time'][:]
            times = np.concatenate((times, file_time))
        fill = ds.variables[csub['substance'][0]]._FillValue 
        times = np.array(times)

        return times, depths, fill
        

    def get_interp_array(self, boundaries, bnd, position, times, depths, search):
        # EXPERIMENTAL - interpolate instead of using nearest neighbour
        arr = []

        yind = int(boundaries[bnd]['CMEMS_index'][position,1])
        xind = int(boundaries[bnd]['CMEMS_index'][position,0])
        xi = boundaries[bnd]['coords'][position,0]
        yi = boundaries[bnd]['coords'][position,1]
        #form query point
        ind = 0
        xii = np.zeros(len(depths) * len(times))
        
        # LINEARIZE QUERY POINTS
        # TIME, DEPTH, LAT, LON
        # order C flattening
        for tt in times:
            for dd in depths:
                for yy in yi:
                    for xx in xi:
                        xii[ind,:] = [tt, dd, yi, xi]
                        ind += 1


        y = ds.variables['latitude'][yind-search:yind+search+1]
        x = ds.variables['longitude'][xind-search:xind+search+1]
        z = depths

        #for tt in range(0, len(times)):
        #    print('time = ' + str(tt+1) + '/ ' + str(len(times)) +', position = ' + str(position+1) + '/' + str(len(boundaries[bnd]['CMEMS_index']))) 
        # TIME, DEPTH, LAT, LON
        arr_t = ds.variables['so'][:, :, yind-search:yind+search+1,  xind-search:xind+search+1]

        # prepare to reshape for the interpolation
        arrs = np.zeros((arr_t.shape[0] * arr_t.shape[1] * arr_t.shape[2] * arr_t.shape[3], 4))
        V    = np.zeros((arr_t.shape[0] * arr_t.shape[1] * arr_t.shape[2] * arr_t.shape[3], 1))
        
        idx = 0
        # order of this being passed is the same order as you would say the dimensions
        # this is because C reshapes will reshape backwards through the dimensions, which
        # reflects what is happening below.
        # nest from first down to last dimension   
        # LINEARIZE DATA POINTS     
        for tt in range(0,arr_t.shape[0]):
            for dd in range(0,arr_t.shape[1]):
                # lat
                for yy in range(0,arr_t.shape[2]):
                    # lon
                    for xx in range(0,arr_t.shape[3]):
                        arrs[idx,:] =[ x[xx], y[yy], z[dd], times[tt]]
                        V[idx] = arr_t[tt,dd,yy,xx]
                        idx += 1
            
        # V SHOULD BE EQUAL TO np.reshape(arr_t, newshape = (-1,1), order = 'C') if understanding is correct
        assert(V == np.reshape(arr_t, newshape = (-1,1), order = 'C'))
        V[V == 0] = np.nan
        
        # interpolate 
        arr = griddata(arrs, V, xi = xii.T )

        return arr

    def write_bc_preamble(self, handle, pli_name, support, sub, depth, tref):
        '''
        write the header information for a bc file
        '''
        handle.write('[forcing]\n')
        handle.write('Name                            = %s%s_%s\n' % (pli_name.replace('.pli',''), sub, make_len(support+1, 4)))

        if sub != 'steric':
            handle.write('Function                        = t3D\n')
            handle.write('Time-interpolation              = linear\n')
            handle.write('Vertical position type          = zdatum\n')
            handle.write('Vertical position specification = ')
            for dep in depth:#.flip():
                # FLIP THE ARRAY?
                handle.write('-%.2f  ' % dep)
            handle.write('\n')
        else:
            handle.write('Function                        = timeseries\n')
            handle.write('Time-interpolation              = linear\n')       

        handle.write('Quantity                        = time\n')
        handle.write('Unit                            = MINUTES since %s\n' % datetime_to_timestring(tref))

        if sub == 'uxuy':
            handle.write('Vector = uxuyadvectionvelocitybnd:ux,uy\n')

        if sub != 'steric':
            for dep in range(0, len(depth)):
                if sub in constituent_boundary_type.keys():

                    for part_sub_i, part_sub in enumerate(constituent_boundary_type[sub]['type']):
                        handle.write('Quantity                        = %s\n' % constituent_boundary_type[sub]['type'][part_sub_i])
                        handle.write('Unit                            = %s\n' % constituent_boundary_type[sub]['unit'])
                else:
                    handle.write('Quantity                        = tracerbnd\n')
                    handle.write('Unit                            = g/m3\n')
                handle.write(    'Vertical position               = %s\n' % str(dep + 1))
        else:
            for part_sub_i, part_sub in enumerate(constituent_boundary_type[sub]['type']):
                handle.write('Quantity                        = %s\n' % constituent_boundary_type[sub]['type'][part_sub_i])
                handle.write('Unit                            = %s\n' % constituent_boundary_type[sub]['unit'])       
            

    def write_pli(self, subs, boundaries, usefor, model_dir):
        """
        ADMINISTRATE ADDITIONAL PLI FILES AND ASSOCIATED NEW EXT

        
        Arguments:
            subs {[type]} -- [description]
            boundaries {[type]} -- [description]
            usefor {[type]} -- [description]
            model_dir {[type]} -- [description]
        """

        pli_loc_key = 'pli_loc'

        for sub in subs:
            for ind, bnd in enumerate(boundaries.keys()):
                if 'waterlevelbnd' in boundaries[bnd]['type']:
                    if sub in usefor.keys():
                        # create a pli for every substance based on this existing pli

                        with open(model_dir + '%s%s.pli' % (bnd,sub) ,'w') as pli:
                            # copy the existing pli but put the substance in the name
                            with open(boundaries[bnd][pli_loc_key],'r') as bndFile:
                                lines = bndFile.readlines()
                                for line in lines:
                                    pli.write(line.replace(bnd, bnd + sub))  
    
                        # copy the original boundary pli as well for the hydrodynamic model
                        sh.copyfile(boundaries[bnd][pli_loc_key], model_dir + boundaries[bnd][pli_loc_key][find_last(boundaries[bnd][pli_loc_key],'\\'):])


    def write_new_ext_file(self, ext, model_dir, boundaries, subs, usefor, grid = None):
        """
        WRITE NEW EXT FILE CONTAINING THE CONSTITUENT BOUNDARIES

        
        Arguments:
            ext {[type]} -- [description]
            model_dir {[type]} -- [description]
            boundaries {[type]} -- [description]
            subs {[type]} -- [description]
            usefor {[type]} -- [description]
        
        Keyword Arguments:
            grid {[type]} -- [description] (default: {None})
        """

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
                                    new_ext.write('quantity=%s\n' % ','.join(constituent_boundary_type[sub]['type']).replace(',',''))
                                else:
                                    new_ext.write('quantity=tracerbnd%s\n' % sub)
                                if sub != 'steric':
                                    new_ext.write('locationfile=%s%s.pli\n' % (bnd,sub))
                                else:
                                    new_ext.write('locationfile=%s.pli\n' % (bnd))
                                
                                new_ext.write('forcingfile=%s.bc\n' % sub)
                                new_ext.write('\n')

            if isinstance(subs, str):
                if grid is not None:
                    # initials go in old style file
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
                else:
                    print('Cannot make WAQ initials, no grid file passed')

class DCSM(Model):
    def __init__(self):
        ext = r'd:\projects\DWAQ_CMEMS\tests\DCSM\in\A07_new.ext'
        data_list = r'd:\projects\DWAQ_CMEMS\CMEMS_download\data\*.nc'
        sub = ['salinity', 'temperature', 'uxuy', 'steric']
        tref = datetime.datetime(2011,12,22,00,00,00)
        model_dir = 'd:\\projects\\DWAQ_CMEMS\\tests\\DCSM\\out\\'
        super().__init__(ext, data_list, sub, tref, model_dir)


class Guayaquil(Model):
    def __init__(self):
        ext = r'd:\projects\DWAQ_CMEMS\tests\Guayaquil\in\sea_riv_boundary_local_bc.ext'
        data_list = r'd:\projects\DWAQ_CMEMS\CMEMS_download\data\*.nc'
        sub = r'd:\projects\DWAQ_CMEMS\tests\Guayaquil\in\guayas_V9.sub'
        tref = datetime.datetime(2000,1,1,00,00,00)
        model_dir = 'd:\\projects\\DWAQ_CMEMS\\tests\\Guayaquil\\out\\'
        super().__init__(ext, data_list, sub, tref, model_dir)
