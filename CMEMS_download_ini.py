'''
CMEMS download input file
'''
from config_download import *

###############################################################################
# INPUT
###############################################################################

# time vect is pandas timestamp format 
# Must be @ 12:00 on a given day
time_vect = {'t_start' : '2012-01-01 12:00:00',
             't_end'   : '2014-01-01 12:00:00'}

dataset = 'physchem' # can be physchem or bio

coords = [-16,16,40,65] # xmin, xmax, ymin, ymax

user = 'rschueder'

pwd = 'RudyCMEMS2017'

config_download(time_vect, dataset, coords, user, pwd)