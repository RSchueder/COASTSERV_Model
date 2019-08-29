import model

#test = model.DCSM()
#test.build_boundary()

#test = model.Guayaquil()                 
#test.build_boundary()

test = model.Med()
test.build_boundary(interp = True, simultaneous = True)   

#test = model.HK()
#test.build_boundary(interp = True, simultaneous = True)    