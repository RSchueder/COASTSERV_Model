'''
main tide
creates an ext file and bc file for water level boundaries
'''
from modules import read_pli, make_len
import netCDF4
Const = ['2N2',   
'MF'   , 
'P1'   , 
'M2'   , 'MKS2' , 'MU2'  , 'Q1'   , 'T2'  , 'J1'  , 'M3'  , 'MM'  ,  'N2'  ,  
'R2'  ,  'K1'  ,  'M4'  ,  'MN4' ,  'S1'  ,  'K2'  ,  'M6'  , 'MS4' ,  'NU2' ,  
'S2'  ,  'L2'  ,  'M8'  ,  'MSF' ,  'O1'  ,  'S4' ] 

def main_tide(coords, pli):
    XY = read_pli(pli)
    X = XY[:,0]
    Y = XY[:,1]
    [amp,phas,cons] = FES_TideModel(coords, const, Y, X)
    with open('file.bc', 'w') as bnd:
        for ss in range(1,len(X) + 1):
            zz = make_len(ss, 4)
            bnd.write('[forcing]\n');
            bnd.write('Name = %s_%s\n', 'sea_boundary',zz);
            bnd.write('Function = astronomic\n');
            bnd.write('Quantity = astronomic component\n');
            bnd.write('Unit = -\n');
            bnd.write('Quantity = waterlevelbnd amplitude\n');
            bnd.write('Unit = m\n');
            bnd.write('Quantity = waterlevelbnd phase\n');
            bnd.write('Unit = deg\n');
            bnd.write('A0   0.0   0.0\n');
            for co = 1:length(cons):
                bnd.write('%s   %f   %f\n',cons[co], amp[ss,co],phas[ss,co]))
            bnd.write('\n')


