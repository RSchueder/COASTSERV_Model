from coastserv.models.boundary import Boundary
import datetime
import os

test = 'test1'
ext = os.path.join(os.getcwd(),'coastserv','static','out',test,'OB_all_20181108.ext')
data_list = os.path.join(os.getcwd(),'coastserv','static','out',test,'data','*.nc')
sub =   ['salinity', 'temperature', 'uxuy']
tref       = datetime.datetime(2011,12,22,00,00,00)
model_dir = os.path.join(os.getcwd(),'coastserv','static','out',test)

test = Boundary(ext, data_list, sub, tref, model_dir)
test.build_boundary(interp = True, simultaneous = True, steric = False) 