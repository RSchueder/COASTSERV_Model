#!/bin/bash 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/thetao_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ]; then 
   while (( ! -f "data/thetao_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable thetao --latitude-max 65 --out-name thetao_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/bottomT_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ]; then 
   while (( ! -f "data/bottomT_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable bottomT --latitude-max 65 --out-name bottomT_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/so_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ]; then 
   while (( ! -f "data/so_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable so --latitude-max 65 --out-name so_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/zos_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ]; then 
   while (( ! -f "data/zos_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable zos --latitude-max 65 --out-name zos_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/uo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ]; then 
   while (( ! -f "data/uo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable uo --latitude-max 65 --out-name uo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-03-31 12:00:00 --user rschueder --date-min 2012-01-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-01-01_12-00-00_2012-03-31_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-06-30 12:00:00 --user rschueder --date-min 2012-04-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-04-01_12-00-00_2012-06-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-09-29 12:00:00 --user rschueder --date-min 2012-07-01 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-07-01_12-00-00_2012-09-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2012-12-29 12:00:00 --user rschueder --date-min 2012-09-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-09-30_12-00-00_2012-12-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-03-30 12:00:00 --user rschueder --date-min 2012-12-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2012-12-30_12-00-00_2013-03-30_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-06-29 12:00:00 --user rschueder --date-min 2013-03-31 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-03-31_12-00-00_2013-06-29_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-09-28 12:00:00 --user rschueder --date-min 2013-06-30 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-06-30_12-00-00_2013-09-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2013-12-28 12:00:00 --user rschueder --date-min 2013-09-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-09-29_12-00-00_2013-12-28_12-00-00.nc --longitude-max 16    done 
fi 
python -m motu-client --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16 
if [ ! -f "data/vo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ]; then 
   while (( ! -f "data/vo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..." 
       echo "giving the server a break..." 
       sleep 10s 
       python -m motuclient --product-id global-reanalysis-phy-001-030-daily --depth-max 5902.058300000001 --depth-min 0.5056 --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --date-max 2014-03-29 12:00:00 --user rschueder --date-min 2013-12-29 12:00:00 --out-dir "data" --longitude-min -16 --pwd RudyCMEMS2017 --motu http://my.cmems-du.eu/motu-web/Motu --latitude-min 40 --variable vo --latitude-max 65 --out-name vo_2013-12-29_12-00-00_2014-03-29_12-00-00.nc --longitude-max 16    done 
fi 

 pause