# -*- coding: utf-8 -*-
"""
Created on Fri Aug  9 09:27:28 2019

@author: schueder
"""

import os
import datetime

import tide
import query
import model


###############################################################################
# DATA QUERY
###############################################################################

time_vect  = {'t_start' : '2017-05-15 12:00:00',
              't_end'   : '2017-09-15 12:00:00'}

dataset    = 'bio'

out = os.path.join(os.getcwd(), 'tests', 'Med' , 'out')
coords      = [0, 2, 39, 42]
credentials = 'credentials.json'

med_query = query.Query(time_vect, dataset, coords, credentials, out)
med_query.build_query()
med_query.send_request_linux()

###############################################################################
# TIDE BOUNDARY
###############################################################################

fes_path = os.path.join('p','1206126-nevref','Maialen','DATA','fromCornelis','FES2012','fes2012','data')
pli      =  os.path.join(os.getcwd(), 'tests', 'Med' , 'in', 'Boundary01.pli')
out      = os.path.join(os.getcwd(), 'tests', 'Med' , 'out')
med_tide = tide.Tide(fes_path, coords, pli, out)
med_tide.initiate_tide()

###############################################################################
# CONSTITUENT BOUNDARY
###############################################################################

ext = med_tide.ext
ext = os.path.join(os.getcwd(), 'tests', 'Med' , 'out', 'Boundary01.ext')
data_list = os.path.join(os.getcwd(), 'tests', 'Med' , 'out', 'data', '*.nc')

sub       = ['salinity', 'temperature', 'uxuy', 'steric']
tref      = datetime.datetime(2000,1,1,00,00,00)
model_dir = med_tide.out
med_mod   = model.Model(ext, data_list, sub, tref, model_dir)
med_mod.build_boundary(interp = True, simultaneous = True)