from coastserv.models.tide import Tide

path = 'd:\\projects\\COASTSERV_Model\\tide\\'
pli = r'd:\projects\COASTSERV_Model\app\coastserv\static\test\OB_all_20181108.pli'
coords = [-16, 16, 40, 80]
out = 'd:\\projects\\COASTSERV_Model\\app\\coastserv\\static\\test\\out\\'

test = Tide(path, coords, pli, out)
test.build_tide()