import datetime
import glob
import os
import tide
import query
import model
import json

###############################################################################
# DATA QUERY
###############################################################################

# from user
with open('input.json','r') as in_file:
    args = json.load(in_file)

time_vect = args['time_vect']
coords = args['coords']

if not os.path.exists(os.path.join(os.getcwd(), 'out')):
    os.mkdir(os.path.join(os.getcwd(), 'out'))
out = os.path.join(os.getcwd(), 'out')

# from user
credentials = 'credentials.json'

dataset    = 'physchem'
mod_query = query.Query(time_vect, dataset, coords, credentials, out)
mod_query.build_query()
mod_query.send_request()


dataset    = 'bio'
mod_query = query.Query(time_vect, dataset, coords, credentials, out)   
mod_query.build_query()
mod_query.send_request()

fes_path = os.path.join(os.getcwd(), 'tide')

for pli in glob.glob(os.path.join(os.getcwd(), 'in', '*.pl*')):

    ###############################################################################
    # TIDE BOUNDARY
    ###############################################################################
    
    mod_tide = tide.Tide(fes_path, coords, pli, out)
    mod_tide.build_tide()
    
    ###############################################################################
    # CONSTITUENT BOUNDARY
    ###############################################################################
    
    ext = mod_tide.ext
    data_list = os.path.join(out, 'data', '*.nc')
    
    sub        = ['salinity', 'temperature', 'uxuy', 'steric']
    tref       = datetime.datetime(args['tref'])
    model_dir  = mod_tide.out
    mod   = model.Model(ext, data_list, sub, tref, model_dir)
    mod.build_boundary(interp = True, simultaneous = True)
    
    if os.path.exists(os.path.join(os.getcwd(), 'in', args['subfile'])):
        # ignore for now
        pass
        sub    = os.path.join(os.getcwd(), 'in', args['subfile'])
        mod    = model.Model(ext, data_list, sub, tref, model_dir)
        mod.build_boundary(interp = True, simultaneous = True)    
    else:
        print('WARNING: No sub file found, cannot create water quality model')

if len(glob.glob(os.path.join(os.getcwd(), 'in', '*.pl*'))) == 0:
    print('ERROR: cannot find any pli boundary files! aborting')
    raise FileNotFoundError
else:    
    mod.merge_ext()
