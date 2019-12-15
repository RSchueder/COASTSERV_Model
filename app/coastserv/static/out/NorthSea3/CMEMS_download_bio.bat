if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload0
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry0
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry0 
	)

:skipdownload0

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload1
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry1
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry1 
	)

:skipdownload1

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	goto skipdownload2
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry2
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry2 
	)

:skipdownload2

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	goto skipdownload3
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry3
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry3 
	)

:skipdownload3

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	goto skipdownload4
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry4
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry4 
	)

:skipdownload4

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	goto skipdownload5
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry5
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable chl --out-dir "data" --out-name chl_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry5 
	)

:skipdownload5

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload6
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry6
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry6 
	)

:skipdownload6

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload7
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry7
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry7 
	)

:skipdownload7

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	goto skipdownload8
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry8
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry8 
	)

:skipdownload8

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	goto skipdownload9
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry9
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry9 
	)

:skipdownload9

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	goto skipdownload10
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry10
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry10 
	)

:skipdownload10

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	goto skipdownload11
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry11
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable o2 --out-dir "data" --out-name o2_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry11 
	)

:skipdownload11

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload12
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry12
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry12 
	)

:skipdownload12

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload13
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry13
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry13 
	)

:skipdownload13

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	goto skipdownload14
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry14
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry14 
	)

:skipdownload14

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	goto skipdownload15
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry15
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry15 
	)

:skipdownload15

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	goto skipdownload16
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry16
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry16 
	)

:skipdownload16

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	goto skipdownload17
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry17
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable no3 --out-dir "data" --out-name no3_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry17 
	)

:skipdownload17

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload18
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry18
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry18 
	)

:skipdownload18

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload19
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry19
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry19 
	)

:skipdownload19

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	goto skipdownload20
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry20
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry20 
	)

:skipdownload20

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	goto skipdownload21
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry21
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry21 
	)

:skipdownload21

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	goto skipdownload22
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry22
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry22 
	)

:skipdownload22

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	goto skipdownload23
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry23
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable po4 --out-dir "data" --out-name po4_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry23 
	)

:skipdownload23

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload24
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry24
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry24 
	)

:skipdownload24

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload25
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry25
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry25 
	)

:skipdownload25

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	goto skipdownload26
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry26
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-05 12:00:00" --date-max "2012-01-11 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-05_12-00-00_2012-01-11_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry26 
	)

:skipdownload26

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	goto skipdownload27
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry27
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-12 12:00:00" --date-max "2012-01-18 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-12_12-00-00_2012-01-18_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry27 
	)

:skipdownload27

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	goto skipdownload28
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry28
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-19 12:00:00" --date-max "2012-01-25 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-19_12-00-00_2012-01-25_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry28 
	)

:skipdownload28

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	goto skipdownload29
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry29
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea3\data\si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_BIO_001_029-TDS --product-id global-reanalysis-bio-001-029-daily --longitude-min -2.0 --longitude-max 2.0 --latitude-min -1.0 --latitude-max 2.0 --date-min "2012-01-26 12:00:00" --date-max "2012-02-01 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable si --out-dir "data" --out-name si_2012-01-26_12-00-00_2012-02-01_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry29 
	)

:skipdownload29

