# DWAQ_CMEMS
Tools for nesting coastal DFM and DFMWAQ models in CMEMS MERCATOR global physiochemical and biogeochemical model output 

# Usage
First the data needs to be downloaded:
* Change settings as needed in init_data.py. This will create a shell script and a batch file for downloading the data files from the CMEMS server 
* run the script to download the data

After the data has been downloaded, the boundary conditions can be created
* Change settings as needed in init_boundary.py 
* needed are a nc grid file, an ext file, a sub file if a water quality model is being created, and an out directory

Then you can execute init_data.py followed by init_boundary.py after the download has completed. an example is provided in run example.