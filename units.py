'''
unit conversions
'''
mass_conversion =  {'Fe' : 55.85,'CHL' : 1,'NO3' : 14, 'PO4' : 30.97, 'Si' : 28.08, 'O2' : 32, 'PHYC' : 12}
unit_conversion =  {'Fe' : 'mg/l','CHL' : 'mg/l','NO3' : 'mg/l', 'PO4' : 'mg/l', 'Si' : 'mg/l', 'O2' : 'mg/l', 'PHYC' : 'mg/l'}

usefor = {
        'OXY'  : {'substance' : 'o2'  , 'conversion' : 32.0 / 1000.0},
        'NO3'  : {'substance' : 'no3' , 'conversion' : 14.0 / 1000.0},
        'PO4'  : {'substance' : 'po4' , 'conversion' : 30.97 / 1000.0},
        'Si'   : {'substance' : 'si'  , 'conversion' : 28.08 / 1000.0},
        'PON1' : {'substance' : 'phyc', 'conversion' : 0.1196 * 14 / (12 * 1000.0)},
        'POP1' : {'substance' : 'phyc', 'conversion' : 0.0085 * 30.97 / (12 * 1000.0)},
        'POC1' : {'substance' : 'phyc', 'conversion' : 1.0 / 1000.0},
        'Green': {'substance' : 'phyc', 'conversion' : 0.5 / 1000.0},
        'Diat' : {'substance' : 'phyc', 'conversion' : 0.5 / 1000.0}}

