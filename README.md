# DWAQ_CMEMS
Tools for nesting coastal DFM and DFMWAQ models in FES tide model output and CMEMS MERCATOR global physiochemical and biogeochemical model output 

# Usage
The tool workflow is designed such that the user is expected to start with a bounding box on the globe and line segments that they wish to define model boundaries on.
These are expected to come from a web app or manual perscription.

Class 1: Tide
* Constructed using a pli file, a FES data path,  a bounding box, and an output path
* Tide.initiate_tide() produces an *.ext file and the waterlevel *.bc file
* See subclasses DCSM and Guayaquil for examples of constructor parameters

Class 2: Query
* Constructed using a time frame, dataset type,  bounding box, user, password, and output path
* Query.initiate_query() produces the batch files necessary to request files from the server
* See subclasses DCSM and Guayaquil for examples of constructor parameters

Class 3: Model
* constructed using an ext file produced by Tide.initiate_tide(), a path to data resulting from the Query.initiate_query() batch file execution, a sub list (either as a list or a sub file), a reference time, and an out model dir
* Model.initiate_model() produces *.bc files for the requested constituents/subs
* See subclasses DCSM and Guayaquil for examples of constructor parameters


# To-do
* (Maybe) implement improved Model.boundary_from_ext() as per dflowutil. Currently a boundary is defined by a pli, and a pli has a type as defined by the constituent residing one line up. 
  If the type is waterlevel (WL) then the computation is conducted. In reality, the same pli could be used multiple times, and be associated with 3 or more types. The type of the pli will be the last constituent type assiciated with it.
  If there are multiple constituents that share a boundary there is no guarantee the last one is WL. In this case the pli will not be labelled as a WL boundary, and constituents will not be created for it. 
  For hydrodynamics this is less important (as sal and temp are skipped likely because they already exist), but this is inappropriate for WAQ. Therefore, currently the ext file should contain only the waterlevel constituent for any boundary
  that additional constituents are to be written for.

# Known issues
* There is no check done on whether a server request was ultimately rejected after 10 failed attempts. Funtionality has been started to address this in linux. The script will not work correctly if different constituents have data covering different time periods.
* (If ext file does not come from Tide.initiate_tide()) The routine to create the *.ext file was designed for water quality constituents, and so if the tool is used to make salinity and temperature boundaries, the *.ext file might need to be manually adjusted if previous salinity and temperature values were specified. All new boundaries are simply appended to the existing *.ext file.

