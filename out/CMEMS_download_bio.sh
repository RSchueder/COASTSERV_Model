#!/bin/bash
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\out\data\chl_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\out\data\chl_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\out\data\o2_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\out\data\o2_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\out\data\no3_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\out\data\no3_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\out\data\po4_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\out\data\po4_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\out\data\si_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\out\data\si_2012-01-01_12-00-00_2012-04-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
