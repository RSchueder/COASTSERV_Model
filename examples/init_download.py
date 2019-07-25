'''
CMEMS download input file
'''
from main_download import *
from main_tide import *
###############################################################################
# INPUT
###############################################################################

# time vect is pandas timestamp format 
# Must be @ 12:00 on a given day
time_vect = {'t_start' : '2012-01-01 12:00:00',
             't_end'   : '2013-01-01 12:00:00'}

dataset = 'physchem' # can be 'physchem' or 'bio'

# max matrix size ~858
# should be taken from web app
coords = [-16,16,40,65] # xmin, xmax, ymin, ymax
#coords = [-85, -75, -5, 1]

user = 'rschueder'
pwd = 'RudyCMEMS2017'

main_tide(coords, pli)
main_download(time_vect, dataset, coords, user, pwd)