# COASTSERV_Model
A program for nesting coastal DFM and DFMWAQ models in FES tide model output and CMEMS MERCATOR global physiochemical and biogeochemical model output. It includes utilities for downloading and processing the data. 
Designed as a backend for a webapp.

# Prerequisites
* see requirements.txt
* some requirements are derived from having installed pylint. Not all are stricly necessary.

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
* Tide.build_tide() produces an *.ext file and the waterlevel *.bc file
* See subclasses for examples of constructor parameters

**Class : model = Model(ext, data_list, sub, tref, model_dir)**

**constructs constituent boundaries for coastal model boundaries**
* Constructed using an ext file produced by Tide.build_tide(), a path to data resulting from the Query.build_query() method, a sub list (either as a list or a sub file), a reference time, and an out model dir
* Model.build_model() produces *.bc files for the requested constituents/subs
* See subclasses for examples of constructor parameters
* see the dictionary usefor in units.py for implemented constituents

# Example of usage
* see example.py

# To-do
* River loads based on Emilio Mayorga et al., (2010). Currently we do not have access to this data,

# Known issues
* The method Query.send_request_linux() will not work on some computers if the sudo python environment is not configured correctly. The script can be run manually however.

