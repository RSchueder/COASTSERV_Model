#!/bin/bash
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/thetao_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/thetao_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable thetao --out-dir "data" --out-name thetao_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/bottomT_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/bottomT_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable bottomT --out-dir "data" --out-name bottomT_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/so_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/so_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/so_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/so_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/so_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable so --out-dir "data" --out-name so_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/zos_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/zos_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable zos --out-dir "data" --out-name zos_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/uo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/uo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable uo --out-dir "data" --out-name uo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/vo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/vo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable vo --out-dir "data" --out-name vo_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi

 pause