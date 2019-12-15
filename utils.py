'''
@schueder July 2019

functions for facilitation boundary condition file creation
'''

import os
import glob
import datetime
import numpy as np 
import shutil as sh
import netCDF4 as nc 
from units import usefor, constituent_boundary_type
from scipy.interpolate import griddata
import itertools

def reversed_enumerate(sequence):
    return itertools.izip(
        reversed(xrange(len(sequence))),
        reversed(sequence),
    )

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


def row2array(line):
    '''
    takes a string of space seperated floats and returns an array
    '''
    line = line.split(' ')
    arr = []
    for ch in line:
        try:
            val = float(ch)
            arr.append(val)
        except:
            pass
    return np.array(arr)
    

def read_pli(var):
    '''
    reads a pli boundary into an array
    '''
    with open(var) as plifile:
        lines = plifile.readlines()
        X = []
        Y = []
        for ind, row in enumerate(lines):
            if '.' in row:
                line = row2array(row)
                X.append(float(line[0]))
                Y.append(float(line[1]))
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

    Jul 10 note to self for update 
    this is intentionally different from the more generic version available in dflowutil
    this is because dflowutil will return a salinity and temperature and water level boundary
    that already exist, whereas this tool will make those based solely on a single pli, assuming
    there are not already other consituents specified at the same pli. If there is, and wl is not
    the last constituent specified for a given non-unique pli, the tool will not work.

    This is a valid assumption because this tool is designed to work on models for which only waterlevel
    boundaries have been defined.
    '''

    boundaries = {}
    with open(var,'r') as nmf: # nmf = new_model_file
        page = nmf.readlines()
        ext_type = 'old' # first assume ext type is old, then check
        for line,text in enumerate(page):
            if '[boundary]' in text:
                ext_type = 'new'
        # parse
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