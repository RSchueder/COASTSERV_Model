# -*- coding: utf-8 -*-
"""
Created on Fri Aug  9 09:27:28 2019

@author: schueder
"""

import datetime
import os
import tide
import query
import model

###############################################################################
# DATA QUERY
###############################################################################

# from user
time_vect  = {'t_start' : '2017-05-15 12:00:00',
              't_end'   : '2017-09-15 12:00:00'}

out = os.path.join(os.getcwd(), 'tests', 'Med' , 'out')
# from user
coords      = [0, 2, 39, 42]
credentials = 'credentials.json'

dataset    = 'physchem'
med_query = query.Query(time_vect, dataset, coords, credentials, out)
med_query.build_query()
# med_query.send_request_windows()

dataset    = 'bio'
med_query = query.Query(time_vect, dataset, coords, credentials, out)
med_query.build_query()
# med_query.send_request_windows()

###############################################################################
# TIDE BOUNDARY
###############################################################################

fes_path = os.path.join('p:','1206126-nevref','Maialen','DATA','fromCornelis','FES2012','fes2012','data\\')
for bound in ['Long','South','North']:
    # from user
    pli      =  os.path.join(os.getcwd(), 'tests', 'Med' , 'in', bound + '.pli')
    out      = os.path.join(os.getcwd(), 'tests', 'Med' , 'out')
    med_tide = tide.Tide(fes_path, coords, pli, out)
    med_tide.build_tide()
    
    ###############################################################################
    # CONSTITUENT BOUNDARY
    ###############################################################################
    
    ext = med_tide.ext
    data_list = os.path.join(os.getcwd(), 'tests', 'Med' , 'out', 'data', '*.nc')
    
    sub        = ['salinity', 'temperature', 'uxuy', 'steric']
    # from user
    tref       = datetime.datetime(2017,5,15,00,00,00)
    model_dir  = med_tide.out
    med_mod    = model.Model(ext, data_list, sub, tref, model_dir)
    med_mod.build_boundary(interp = True, simultaneous = True)
    
    # from user
    #sub        = r'd:\projects\COASTSERV_Model\tests\Guayaquil\in\guayas_V9.sub'
    #tref       = datetime.datetime(2017,5,15,00,00,00)
    #model_dir  = med_tide.out
    #med_mod    = model.Model(ext, data_list, sub, tref, model_dir)
    #med_mod.build_boundary(interp = True, simultaneous = True)    

med_mod.merge_ext()
