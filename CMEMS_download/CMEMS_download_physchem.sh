#!/bin/bash
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ]; then
   while (( ! -f "data/so_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ]; then
   while (( ! -f "data/so_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ]; then
   while (( ! -f "data/so_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ]; then
   while (( ! -f "data/so_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-01-01 12:00:00 --date-max 2012-04-01 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-01-01_12-00-00_2012-04-01_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-04-02 12:00:00 --date-max 2012-07-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-04-02_12-00-00_2012-07-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-07-03 12:00:00 --date-max 2012-10-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-07-03_12-00-00_2012-10-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16 --longitude-max 16 --latitude-min 40 --latitude-max 65 --date-min 2012-10-03 12:00:00 --date-max 2013-01-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2012-10-03_12-00-00_2013-01-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi

 pause