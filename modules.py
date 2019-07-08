'''
@schueder July 2019

functions for facilitation boundary condition file creation
'''

import os
import gc
import d3d
import glob
import datetime
import numpy as np 
import shutil as sh
import netCDF4 as nc 
from units import usefor, constituent_boundary_type

def find_last(var,ss):
    ind = 0
    lstInd = ind
    it = 0
    while ind >= 0:
        ind = var.find(ss,ind + it,len(var))
        it = 1
        if ind < 0:
            return lstInd + 1
        lstInd = ind

def change_os(var):
    osys = []
    for ch in var:
        if ':' in ch:
            osys = 'windows'
        if ch == '\\':
            osys = 'windows'
    if len(osys) == 0:
        osys = 'linux'
    if '/p/' in var and osys == 'linux':
        return var.replace('/p/','p:\\').replace('/','\\')
    elif osys == 'linux':
        return var.replace('/','\\')
    elif ':\\' in var and osys == 'windows':
        return var.replace(':\\','/').replace('\\','/')


def make_len(var, size):
    '''
    returns the passed string as a longer string of len(size) characters, with any additional characters being a prefix of zeros
    '''
    if len(str(var)) != size:
        go_to = size - len(str(var))
        add = ''
        for ii in range(0, go_to):
            add += '0'
        return add + str(var)
    else:
        return str(var)


def datetime_to_timestring(dt):
    return str(dt.year) + '-' + make_len(dt.month, 2) + '-' + make_len(dt.day, 2) + ' ' + make_len(dt.hour, 2) + ':00:00'


def read_pli(var):
    '''
    reads a pli boundary
    '''
    with open(var) as plifile:
        lines = plifile.readlines()
        X = []
        Y = []
        for ind, row in enumerate(lines):
            if '.' in row:
                line = row.split(' ')
                try:
                    X.append(float(line[0]))
                    Y.append(float(line[2]))
                except(ValueError):
                    X.append(float(line[1]))
                    Y.append(float(line[3]))
    return np.array([X, Y]).T


def read_sub_file(file):
    '''
    outputs the substances in a sub file
    '''
    with open(file,'r') as subs:
        sub = []
        lines = subs.readlines()
        for line in lines:
            if line[0:9] == 'substance':
                tmp = line.split(' ')
                sub.append(tmp[1].replace("'",''))
    return sub


def boundary_from_ext(var):
    '''
    extracts the boundary name and type from a boundary definition .ext file
    '''
    boundaries = {}
    with open(var,'r') as nmf:
        page = nmf.readlines()
        ext_type = 'old'
        for line,text in enumerate(page):
            if '[boundary]' in text:
                ext_type = 'new'
        if ext_type == 'new':
            for line,text in enumerate(page):
                if '*' not in text:
                    if '[boundary]' in text:
                        name = page[line+2].replace('locationfile=','').replace('.pli','').replace('\n','')
                        if '/' in name:    
                            name = name[find_last(name,'/'):]
                        boundaries[name] = {}
                        boundaries[name]['type'] = page[line+1].replace('quantity=','').replace('\n','')
                        boundaries[name]['pli_loc'] = change_os(page[line+2].replace('locationfile=','').replace('\n',''))
                        boundaries[name]['data_loc'] = page[line+3].replace('forcingfile=','').replace('\n','')
        else:
            for line,text in enumerate(page):
                if '*' not in text:
                    if 'QUANTITY=' in text:
                        name = page[line+1].replace('FILENAME=','').replace('.pli','').replace('\n','')
                        boundaries[name] = {}
                        boundaries[name]['type'] = text.replace('QUANTITY=','')
                        boundaries[name]['location'] = name + '.pli'
                        boundaries[name]['data'] = name + '.tim'
    return boundaries


def read_nc_data(data_list, boundaries, bnd, csub):
    '''
    reads each file one by one, storing the data per position in a tensor
    this will be returned so it can be writen to a file
    The stratey tries to reduce the number of total times nc file handles are switched
    '''
    times = np.array([])
    for file_index, data_file in enumerate(data_list[0]):
        # it is assumed all variables in csub to make a model sub have the same file sizes
        ds = nc.Dataset(data_file, 'r')
        if file_index == 0:
            depths = ds.variables['depth'][:]
        file_time = ds.variables['time'][:]
        times = np.concatenate((times, file_time))
    fill = ds.variables[csub['substance'][0]]._FillValue 

    times = np.array(times)
    # not sure what order the times will be in, so we sort them
    times.sort()
    # 1950 01 01 is the reference time for CMEMS
    times = np.array([datetime.datetime(1950,1,1,0,0,0) + datetime.timedelta(hours = int(tt)) for tt in times])
    meta = {'depths' : depths, 'times': times}
    data = {}
    for part_sub in csub['substance']:
        data[part_sub] = np.zeros((len(meta['times']), len(meta['depths']), len(boundaries[bnd]['CMEMS_index'])))

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
                arr = ds.variables[part_sub][:,:, int(boundaries[bnd]['CMEMS_index'][position,1]), int(boundaries[bnd]['CMEMS_index'][position,0])]
                arr = arr.squeeze()
                arr.mask = False       

                data[part_sub][t_index:t_index+len(times), :, position] = arr

                et = datetime.datetime.now()
                print(part_sub + ' position ' + str(position) + ' read took ' + str((et - st).seconds) + ' seconds on time block ' + str(file_index + 1) + '/' + str(len(data_list[part_sub_i])))

    return meta['times'], depths, data, fill


def write_bc_preamble(handle, pli_name, support, sub, depth, tref):
    '''
    write the header information for a bc file
    '''
    handle.write('[forcing]\n')
    handle.write('Name                            = %s%s_%s\n' % (pli_name.replace('.pli',''), sub, make_len(support+1, 4)))
    handle.write('Function                        = t3D\n')
    handle.write('Time-interpolation              = linear\n')
    handle.write('Vertical position type          = zdatum\n')
    handle.write('Vertical position specification = ')
    for dep in depth:
        handle.write('-%.2f  ' % dep)
    handle.write('\n')
    handle.write('Quantity                        = time\n')
    handle.write('Unit                            = MINUTES since %s\n' % datetime_to_timestring(tref))

    if sub == 'uxuy':
        handle.write('Vector = uxuyadvectionvelocitybnd:ux,uy\n')

    for dep in range(0, len(depth)):
        for part_sub_i, part_sub in enumerate(constituent_boundary_type[sub]['type']):
            if sub in constituent_boundary_type.keys():
                handle.write('Quantity                        = %s\n' % constituent_boundary_type[sub]['type'][part_sub_i])
                handle.write('Unit                            = %s\n' % constituent_boundary_type[sub]['unit'])
            else:
                handle.write('Quantity                        = tracerbnd\n')
                handle.write('Unit                            = g/m3\n')
            handle.write(    'Vertical position               = %s\n' % str(dep + 1))
        

def write_bcfile(out_dir, sub, data_list, boundaries, bnd, tref_model):
    '''
    write the bc file, calling preamble function and writing values at all depths for all times
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

            times, depths, data, fill = read_nc_data(data_list, boundaries, bnd, csub)

            # for every position, go through all the data files and read data at the space index
            for position in range(0, len(boundaries[bnd]['CMEMS_index'])):
                write_bc_preamble(bcfile, bnd, position, sub, depths, tref_model)

                for tind, tt in enumerate(times):
                    tdiff = tt - tref_model
                    bcfile.write(str((tdiff.seconds / 60) + (tdiff.days * 1440)))
                    bcfile.write('  ')
                    valid = 0.0
                    for dind, depth in enumerate(depths):
                        for part_sub in csub['substance']:
                            val = data[part_sub][tind, dind, position]
                            if val == fill or np.isnan(val):
                                val = valid
                            else:
                                valid = val
                            bcfile.write('%.4e' % (val * csub['conversion']))
                            bcfile.write('  ')
                    bcfile.write('\n')
            print('finished writing %s boundary for position %i/%i in boundary %s' % (sub, position+1, len(boundaries[bnd]['CMEMS_index']), bnd))
            gc.collect()
