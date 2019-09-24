python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name data\chl_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\chl_2017-05-15_12-00-00_2017-06-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name data\chl_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\chl_2017-06-14_12-00-00_2017-07-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name data\chl_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\chl_2017-07-14_12-00-00_2017-08-12_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name data\chl_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\chl_2017-08-13_12-00-00_2017-09-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name data\chl_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\chl_2017-09-12_12-00-00_2017-10-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name data\o2_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\o2_2017-05-15_12-00-00_2017-06-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name data\o2_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\o2_2017-06-14_12-00-00_2017-07-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name data\o2_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\o2_2017-07-14_12-00-00_2017-08-12_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name data\o2_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\o2_2017-08-13_12-00-00_2017-09-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name data\o2_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\o2_2017-09-12_12-00-00_2017-10-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name data\no3_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\no3_2017-05-15_12-00-00_2017-06-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name data\no3_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\no3_2017-06-14_12-00-00_2017-07-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name data\no3_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\no3_2017-07-14_12-00-00_2017-08-12_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name data\no3_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\no3_2017-08-13_12-00-00_2017-09-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name data\no3_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\no3_2017-09-12_12-00-00_2017-10-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name data\po4_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\po4_2017-05-15_12-00-00_2017-06-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name data\po4_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\po4_2017-06-14_12-00-00_2017-07-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name data\po4_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\po4_2017-07-14_12-00-00_2017-08-12_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name data\po4_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\po4_2017-08-13_12-00-00_2017-09-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name data\po4_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\po4_2017-09-12_12-00-00_2017-10-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name data\si_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\si_2017-05-15_12-00-00_2017-06-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-05-15 12:00:00" --date-max "2017-06-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2017-05-15_12-00-00_2017-06-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name data\si_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\si_2017-06-14_12-00-00_2017-07-13_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-06-14 12:00:00" --date-max "2017-07-13 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2017-06-14_12-00-00_2017-07-13_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name data\si_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\si_2017-07-14_12-00-00_2017-08-12_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-07-14 12:00:00" --date-max "2017-08-12 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2017-07-14_12-00-00_2017-08-12_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name data\si_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\si_2017-08-13_12-00-00_2017-09-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-08-13 12:00:00" --date-max "2017-09-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2017-08-13_12-00-00_2017-09-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name data\si_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
echo "download failed, giving the server a break..."
timeout 10
:chkretry
if not exist D:\projects\COASTSERV_Model\tests\Med\out\data\si_2017-09-12_12-00-00_2017-10-11_12-00-00.nc ( 
  python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min 0 --longitude-max 2 --latitude-min 39 --latitude-max 42 --date-min "2017-09-12 12:00:00" --date-max "2017-10-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2017-09-12_12-00-00_2017-10-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
  goto chkretry 
  ) 
