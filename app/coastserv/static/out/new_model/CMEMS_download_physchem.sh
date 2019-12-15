#!/bin/bash
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\thetao_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\bottomT_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\so_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\zos_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\uo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-06-26 12:00:00" --date-max "2016-07-02 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-06-26_12-00-00_2016-07-02_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-03 12:00:00" --date-max "2016-07-09 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-03_12-00-00_2016-07-09_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-10 12:00:00" --date-max "2016-07-16 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-10_12-00-00_2016-07-16_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-17 12:00:00" --date-max "2016-07-23 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-17_12-00-00_2016-07-23_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
if [ ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ]; then
   while (( ! -f "d:\projects\COASTSERV_Model\app\coastserv\static\out\new_model\data\vo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc" ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2016-07-24 12:00:00" --date-max "2016-07-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2016-07-24_12-00-00_2016-07-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
   done
fi
