###############################################################################
# PLI  and BC FILES
###############################################################################
for ind, bnd in enumerate(boundaries.keys()):
    if 'waterlevelbnd' in boundaries[bnd]['type'] or 'reimann' in boundaries[bnd]['type']:
        # create a pli and bc for every substance
        t = np.arange(0,(1+365*4))
        for sub in subs:
            t = np.arange(0,(1+365*4))
            val = np.ones(len(t))
            
            # pli
            with open(newBndDir + '%s%s.pli' % (bnd,sub) ,'w') as pli:
                # copy the existing pli but put the substance in the name
                match = [ii for ii in bndpli if bnd in ii]
                with open(match[0],'r') as bndFile:
                    lines = bndFile.readlines()
                    for line in lines:
                        pli.write(line.replace(bnd.replace('_flow','') + '_flow_',bnd + sub))            
            # tim
            # THIS NEEDS TO BE A BC FILE
            with open(newBndDir + '%s%s_0001.tim' % (bnd,sub) ,'w') as tim:
                tim.write('* column 1 = time in minutes since ' + tref + '\n')
                tim.write('* column 2 = concentration of  ' + sub + '\n')
                for tind, time in enumerate(t):
                    tim.write('%.4e    %.4e\n' % (time * 1440, val[tind])) 
           
        match = [ii for ii in bndpli if bnd in ii]
        # copy the original boundaries as well
        for pli in match:
            sh.copyfile(pli,newBndDir + pli[FindLast(pli,'\\'):])
      
###############################################################################
# WRITE NEW EXT FILE
###############################################################################

with open(template,'r') as tmf:
    with open(newBndDir + 'FlowFM_DFMWAQ.ext','w') as nmf:
        # bnds
        for ind, bnd in enumerate(boundaries.keys()):
            if 'waterlevelbnd' in boundaries[bnd]['type'] or 'dischargebnd' in boundaries[bnd]['type']:
                bnd = bnd.replace('_flow','').replace('_ssh','')
                for sub in subs:
                    nmf.write('QUANTITY=tracerbnd%s\n' % sub)
                    nmf.write('FILENAME=%s%s.pli\n' % (bnd,sub))
                    nmf.write('FILETYPE=9\n')
                    nmf.write('METHOD=3\n')
                    nmf.write('OPERAND=O\n')
                    nmf.write('\n')     
        # initials
        for sub in subs:
            nmf.write('QUANTITY=initialtracer%s\n' % sub)
            nmf.write('FILENAME=domain.pol\n')
            nmf.write('FILETYPE=10\n')
            nmf.write('METHOD=4\n')
            nmf.write('OPERAND=O\n')
            if sub in ini.keys():
                nmf.write('VALUE=%.4e\n' % ini[sub])
            else:
                nmf.write('VALUE=0.0\n')
            nmf.write('\n')
            
        # meteo and rivs
        lines = tmf.readlines()
        for line in lines:
            nmf.write(line)
