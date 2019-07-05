#!/bin/bash
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/chl_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/chl_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/chl_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/chl_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/chl_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/chl_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/chl_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/chl_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable chl --out-dir "data" --out-name chl_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/o2_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/o2_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/o2_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/o2_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/o2_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/o2_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/o2_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/o2_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable o2 --out-dir "data" --out-name o2_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/no3_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/no3_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/no3_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/no3_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/no3_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/no3_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/no3_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/no3_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable no3 --out-dir "data" --out-name no3_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/po4_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/po4_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/po4_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/po4_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/po4_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/po4_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/po4_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/po4_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable po4 --out-dir "data" --out-name po4_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/si_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ]; then
   while (( ! -f "data/si_2002-07-01_12-00-00_2002-09-30_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-07-01 12:00:00 --date-max 2002-09-30 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2002-07-01_12-00-00_2002-09-30_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/si_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ]; then
   while (( ! -f "data/si_2002-10-01_12-00-00_2002-12-31_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2002-10-01 12:00:00 --date-max 2002-12-31 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2002-10-01_12-00-00_2002-12-31_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/si_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ]; then
   while (( ! -f "data/si_2003-01-01_12-00-00_2003-04-02_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-01-01 12:00:00 --date-max 2003-04-02 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2003-01-01_12-00-00_2003-04-02_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi
python -m motu-client --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017 
if [ ! -f "data/si_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ]; then
   while (( ! -f "data/si_2003-04-03_12-00-00_2003-07-03_12-00-00.nc " ))
   do
       echo "ERROR: download failed on server end, retrying..."
       echo "giving the server a break..."
       sleep 10s
       python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -85 --longitude-max -75 --latitude-min -5 --latitude-max 1 --date-min 2003-04-03 12:00:00 --date-max 2003-07-03 12:00:00 --depth-min 0.5056 --depth-max 5902.058300000001 --variable si --out-dir "data" --out-name si_2003-04-03_12-00-00_2003-07-03_12-00-00.nc --user rschueder --pwd RudyCMEMS2017    done
fi

 pause