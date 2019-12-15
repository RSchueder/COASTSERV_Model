if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\thetao_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload0
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry0
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\thetao_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry0 
	)

:skipdownload0

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\thetao_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload1
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry1
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\thetao_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry1 
	)

:skipdownload1

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\bottomT_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload2
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry2
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\bottomT_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry2 
	)

:skipdownload2

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\bottomT_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload3
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry3
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\bottomT_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry3 
	)

:skipdownload3

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\so_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload4
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry4
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\so_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry4 
	)

:skipdownload4

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\so_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload5
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry5
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\so_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry5 
	)

:skipdownload5

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\zos_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload6
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry6
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\zos_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry6 
	)

:skipdownload6

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\zos_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload7
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry7
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\zos_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry7 
	)

:skipdownload7

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\uo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload8
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry8
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\uo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry8 
	)

:skipdownload8

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\uo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload9
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry9
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\uo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry9 
	)

:skipdownload9

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\vo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	goto skipdownload10
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry10
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\vo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-22 12:00:00" --date-max "2011-12-28 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2011-12-22_12-00-00_2011-12-28_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry10 
	)

:skipdownload10

if exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\vo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	goto skipdownload11
	)

python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry11
if not exist d:\projects\COASTSERV_Model\app\coastserv\static\out\NorthSea4\data\vo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min -16.0 --longitude-max 16.0 --latitude-min 38.0 --latitude-max 72.0 --date-min "2011-12-29 12:00:00" --date-max "2012-01-04 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2011-12-29_12-00-00_2012-01-04_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry11 
	)

:skipdownload11

