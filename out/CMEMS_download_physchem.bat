echo "downloading thetao_2012-01-01_12-00-00_2012-01-30_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\thetao_2012-01-01_12-00-00_2012-01-30_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading thetao_2012-01-31_12-00-00_2012-02-29_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\thetao_2012-01-31_12-00-00_2012-02-29_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable thetao --out-dir "data" --out-name thetao_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading bottomT_2012-01-01_12-00-00_2012-01-30_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\bottomT_2012-01-01_12-00-00_2012-01-30_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading bottomT_2012-01-31_12-00-00_2012-02-29_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\bottomT_2012-01-31_12-00-00_2012-02-29_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable bottomT --out-dir "data" --out-name bottomT_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading so_2012-01-01_12-00-00_2012-01-30_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\so_2012-01-01_12-00-00_2012-01-30_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading so_2012-01-31_12-00-00_2012-02-29_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\so_2012-01-31_12-00-00_2012-02-29_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable so --out-dir "data" --out-name so_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading zos_2012-01-01_12-00-00_2012-01-30_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\zos_2012-01-01_12-00-00_2012-01-30_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading zos_2012-01-31_12-00-00_2012-02-29_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\zos_2012-01-31_12-00-00_2012-02-29_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable zos --out-dir "data" --out-name zos_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading uo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\uo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading uo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\uo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable uo --out-dir "data" --out-name uo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading vo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\vo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-01 12:00:00" --date-max "2012-01-30 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2012-01-01_12-00-00_2012-01-30_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

echo "downloading vo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc"
python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
:chkretry
if not exist D:\projects\COASTSERV_Model\out\data\vo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc ( 
	echo "download failed, giving the server a break..."
	timeout 10
	python -m motuclient --motu http://my.cmems-du.eu/motu-web/Motu --service-id GLOBAL_REANALYSIS_PHY_001_030-TDS --product-id global-reanalysis-phy-001-030-daily --longitude-min 26 --longitude-max 35 --latitude-min -36 --latitude-max -25 --date-min "2012-01-31 12:00:00" --date-max "2012-02-29 12:00:00" --depth-min 0.493 --depth-max 5727.918000000001 --variable vo --out-dir "data" --out-name vo_2012-01-31_12-00-00_2012-02-29_12-00-00.nc --user RSchueder --pwd RudyCMEMS2017 
	goto chkretry 
	)

