# DWAQ_CMEMS
Tools for nesting coastal DFM and DFMWAQ models in CMEMS MERCATOR global physiochemical and biogeochemical model output 

# Usage
The tool workflow consists of two steps, downloading the data and processing the data.

Downloading
* Settings are specified in init_data.py. Running this will create a shell script and a batch file for downloading the data files from the CMEMS server. Run the script to download the data.
* An example is shown in run_download_example.bat

Processing
* After the data has been downloaded, the boundary conditions can be created. Settings are specified in init_boundary.py 
* An example is shown in run_boundary_example.bat

If you first edit both initialize.py files, then you can run the whole process in one step using a script similar to run_example.bat.

# Known issues
* There is no check done on whether a server request was ultimately rejected after 10 failed attempts. Funtionality has been started to address this in linux. The script will not work correctly if different constituents have data covering different time periods.
* The routine to create the *.ext file was designed for water quality constituents, and so if the tool is used to make salinity and temperature boundaries, the *.ext file might need to be manually adjusted if previous salinity and temperature values were specified. All new boundaries are simply appended to the existing *.ext file.

