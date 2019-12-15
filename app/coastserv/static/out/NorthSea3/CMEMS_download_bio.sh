#!/bin/bash
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
