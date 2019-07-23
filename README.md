# DWAQ_CMEMS
Tools for nesting coastal DFM and DFMWAQ models in CMEMS MERCATOR global physiochemical and biogeochemical model output 

# Usage
The tool workflow consists of two steps, downloading the data and processing the data.

Downloading
* Settings are specified in init_data.py. Running this will create a shell script and a batch file for downloading the data files from the CMEMS server. Run the script to download the data.
	* a time frame, dataset choice, and coordinate window are needed
* An example is shown in run_download_example.bat

Processing
* After the data has been downloaded, the boundary conditions can be created. Settings are specified in init_boundary.py 
	* a .nc grid, an ext file with only waterlevel boundaries, a path to the downloaded data, a substance file or list, a model reference time, and an output folder are needed
* An example is shown in run_boundary_example.bat

If you first edit both initialize.py files, then you can run the whole process in one step using a script similar to run_example.bat.

# To-do
* (Maybe) implement improved modules.boundary_from_ext() as per dflowutil. Currently a boundary is defined by a pli, and a pli has a type as defined by the constituent residing one line up. 
  If the type is waterlevel (WL) then the computation is conducted. In reality, the same pli could be used multiple times, and be associated with 3 or more types. The type of the pli will be the last constituent type assiciated with it.
  If there are multiple constituents that share a boundary there is no guarantee the last one is WL. In this case the pli will not be labelled as a WL boundary, and constituents will not be created for it. 
  For hydrodynamics this is less important (as sal and temp are skipped likely because they already exist), but this is inappropriate for WAQ. Therefore, currently the ext file should contain only the waterlevel constituent for any boundary
  that additional constituents are to be written for.

# Known issues
* There is no check done on whether a server request was ultimately rejected after 10 failed attempts. Funtionality has been started to address this in linux. The script will not work correctly if different constituents have data covering different time periods.
* The routine to create the *.ext file was designed for water quality constituents, and so if the tool is used to make salinity and temperature boundaries, the *.ext file might need to be manually adjusted if previous salinity and temperature values were specified. All new boundaries are simply appended to the existing *.ext file.

