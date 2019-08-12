# -*- coding: utf-8 -*-
"""
Created on Fri Aug  9 09:27:28 2019

@author: schueder
"""

import tide
import query
import model
import datetime

###############################################################################
# DATA QUERY
###############################################################################

time_vect  = {'t_start' : '2017-05-15 12:00:00',
              't_end'   : '2017-09-15 12:00:00'}
dataset    = 'physchem'
user       = 'rschueder'
pwd        = '*****'
out        = 'd:\\projects\\DWAQ_CMEMS\\tests\\Med\\out\\'
coords     = [0, 2, 39, 42]
#
medq = query.Query(time_vect, dataset, coords, user, pwd, out)
medq.build_query()
medq.send_request()

###############################################################################
# TIDE BOUNDARY
###############################################################################

fes_path = 'p:\\1206126-nevref\\Maialen\\DATA\\fromCornelis\\FES2012\\fes2012\\data\\'
pli =  r'd:\projects\DWAQ_CMEMS\tests\Med\in\Boundary01.pli'
out        = 'd:\\projects\\DWAQ_CMEMS\\tests\\Med\\out\\'
medtide = tide.Tide(fes_path, coords, pli, out)
medtide.initiate_tide()

###############################################################################
# CONSTITUENT BOUNDARY
###############################################################################

ext = medtide.ext
data_list = r'd:\\projects\DWAQ_CMEMS\\tests\\Med\\out\\data\\*.nc'
sub       = ['salinity', 'temperature', 'uxuy', 'steric']
tref      = datetime.datetime(2000,1,1,00,00,00)
model_dir = medtide.out
medmod    = model.Model(ext, data_list, sub, tref, model_dir)
medmod.build_boundary(interp = True, simultaneous = False)