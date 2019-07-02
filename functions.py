import os
import d3d
import glob
import datetime
import numpy as np 
import shutil as sh
import netCDF4 as nc 

def pdistf(x1,y1,x2,y2):
    return np.sqrt((x2-x1)**2 + (y2-y1)**2)


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


def make_two(var):
    if len(str(var)) == 1:
        return '0' + str(var)
    else:
        return str(var)


def make_four(var):
    if len(str(var)) != 4:
        go_to = 4 - len(str(var))
        add = ''
        for ii in range(0,go_to):
            add += '0'
        return add + str(var)
    else:
        return str(var)


def datetime_to_timestring(dt):
    return str(dt.year) + '-' + make_two(dt.month) + '-' + make_two(dt.day) + ' ' + make_two(dt.hour) + ':00:00'


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


def SubFile(file):
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


def write_bc_preamble(handle, pli_name, support, sub, depth, tref, unit):
    handle.write('[forcing]\n')
    handle.write('Name                            = %s_%s\n' % (pli_name.replace('.pli',''), make_four(support)))
    handle.write('Function                        = t3D\n')
    handle.write('Time-interpolation              = linear\n')
    handle.write('Vertical position type          = zdatum\n')
    handle.write('Vertical position specification = ')
    for dep in depth:
        handle.write('-%.2f  ' % dep)
    handle.write('\n')
    handle.write('Quantity                        = time\n')
    handle.write('Unit                            = MINUTES since %s\n' % datetime_to_timestring(tref))
    handle.write('Quantity                        = tracerbnd\n')
    handle.write('Unit                            = %s\n' % unit)
    for dep in range(0, len(depth)):
        handle.write('Vertical position           = %s\n' % str(dep + 1))
        handle.write('Quantity                    = tracerbnd\n')
        handle.write('Unit                        = %s\n' % unit)


def write_bcfile(out_dir, sub, ds, time, usefor, boundaries, bnd, tref_model):
    depths = ds.variables['depth'][:]
    with open('%s%s.bc' % (out_dir, sub),'w') as bcfile:
        csub = usefor[sub]
        arr = np.zeros((ds.variables['time'].shape[0], ds.variables['depth'].shape[0], len(boundaries[bnd]['CMEMS_index'])))
        for position in range(0, len(boundaries[bnd]['CMEMS_index'])):
            # time, depth, lat (Y), long(X)
            arr[:,:,position] = ds.variables[csub['substance']][:,:,int(boundaries[bnd]['CMEMS_index'][position,1]),int(boundaries[bnd]['CMEMS_index'][position,0])]
            write_bc_preamble(bcfile, bnd, position, sub, ds.variables['depth'][:], tref_model, 'NA')
            valid = 0.0
            for tind, tt in enumerate(time):
                tdiff = tt - tref_model
                bcfile.write(str((tdiff.seconds / 60) + (tdiff.days * 1440)))
                bcfile.write('  ')
                for dind, dep in enumerate(depths):
                    val = arr[tind,dind,position]
                    if val == ds.variables[csub['substance']]._FillValue:
                        val = valid
                    else:
                        valid = val
                    bcfile.write('%.4e' % (val * csub['conversion']))
                    bcfile.write('  ')
                bcfile.write('\n')
