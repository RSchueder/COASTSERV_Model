#!/bin/bash
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name data\thetao_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name data\thetao_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name data\thetao_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name data\thetao_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name data\thetao_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\thetao_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name data\bottomT_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name data\bottomT_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name data\bottomT_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name data\bottomT_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name data\bottomT_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\bottomT_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name data\so_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name data\so_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name data\so_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name data\so_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name data\so_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\so_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name data\zos_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name data\zos_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name data\zos_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name data\zos_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name data\zos_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\zos_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name data\uo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name data\uo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name data\uo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name data\uo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name data\uo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\uo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name data\vo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name data\vo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name data\vo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name data\vo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name data\vo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ]; then
   while (( ! -f "D:\projects\COASTSERV_Model\tests\Med\out\data\vo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
