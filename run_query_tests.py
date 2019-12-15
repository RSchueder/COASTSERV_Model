import query

#test = query.DCSM('physchem')
#test = query.Guayaquil('physchem')
test = query.Med('physchem')
#test = query.HK('physchem')                 

test.build_query()
test.send_request_windows()

#test = query.HK('bio')                 

#test.build_query()
#test.send_request_windows()