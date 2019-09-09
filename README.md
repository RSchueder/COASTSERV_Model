# COASTSERV_Model
A program for nesting coastal DFM and DFMWAQ models in FES tide model output and CMEMS MERCATOR global physiochemical and biogeochemical model output. It includes utilities for downloading and processing the data. 
Designed as a backend for a webapp.

# Prerequisites
* see requirements.txt. Some requirements are derived from having installed pylint. Not all are stricly necessary.

**other requirements:**
* python must be in PATH environment variable

# Usage
The tool workflow is designed such that the user is expected to start with a bounding box [xmin, xmax, ymin, ymax] on the globe and line segments (x,y) that they wish to define model boundaries on.
These are expected to come from a web app or manual perscription that are fed into input.json. The bounding box is a list of floats and the line segment boundaries are ascii polygon file (referred to as a *.pli in dflowfm).

**Class : query = Query(time_vect, dataset, coords, user, pwd, out)**

**constructs and sends a request to CMEMS server for data download**
* Constructed using a time frame, dataset type,  bounding box, user, password, and output path
* Query.build_query() produces the batch files necessary to request files from the server
* Query.send_request() executes the batch files
* See subclasses for examples of constructor parameters

**Class : tide = Tide(fes_path, coords, pli, out)**

**constructs astronomical constituent boundaries for coastal tidal waterlevels**
* Constructed using a pli file, a FES data path,  a bounding box, and an output path
* Tide.build_tide() produces an .ext file and the waterlevel .bc file
* See subclasses for examples of constructor parameters

**Class : model = Model(ext, data_list, sub, tref, model_dir)**

**constructs constituent boundaries for coastal model boundaries**
* Constructed using an ext file produced by Tide.build_tide(), a path to data resulting from the Query.build_query() method, a sub list (either as a list or a sub file), a reference time, and an out model dir
* Model.build_model() produces *.bc files for the requested constituents/subs
* See subclasses for examples of constructor parameters
* see the dictionary usefor in units.py for implemented constituents

# Example of usage
* run COASTSERV_Model.py with the correct credentials.json and input.json. The contents of these files should be:
* **credentials.json** -> {"user" : "" , "pwd" : ""}
* **input.json** -> {"time_vect"  : {"t_start" : "2012-01-01 12:00:00", "t_end" : "2012-02-01 12:00:00"} , "coords" :  [-16,16,40,65], "tref" :"2011,12,21,00,00,00", "subfile" : "subfile.sub"}
* see example.py for non-json version

# To-do
* River loads based on Emilio Mayorga et al., (2010). Currently we do not have access to this data.

# Known issues
* The use of the water level (steric) correction is still not verified conceptually and should be used with care.

