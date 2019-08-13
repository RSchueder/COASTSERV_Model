# DWAQ_CMEMS
A program for nesting coastal DFM and DFMWAQ models in FES tide model output and CMEMS MERCATOR global physiochemical and biogeochemical model output. It includes utilities for downloading and processing the data. 

# Prerequisites
**packages not standard to Anaconda:**
* motuclient
* netCDF4 

**other requirements:**
* python must be in PATH environment variable
* might only work on systems with english language/keyboard

# Usage
The tool workflow is designed such that the user is expected to start with a bounding box [xmin, xmax, ymin, ymax] on the globe and line segments (x,y) that they wish to define model boundaries on.
These are expected to come from a web app or manual perscription. The bounding box is a list of floats and the line segment boundaries are ascii polygon filea (referred to as a *.pli in dflowfm).

**Class : query = Query(time_vect, dataset, coords, user, pwd, out)**

**constructs and sends a request to CMEMS server for data download**
* Constructed using a time frame, dataset type,  bounding box, user, password, and output path
* Query.build_query() produces the batch files necessary to request files from the server
* Query.send_request() executes the batch files
* See subclasses DCSM and Guayaquil for examples of constructor parameters

**Class : tide = Tide(fes_path, coords, pli, out)**

**constructs astronomical constituent boundaries for coastal tidal waterlevels**
* Constructed using a pli file, a FES data path,  a bounding box, and an output path
* Tide.initiate_tide() produces an *.ext file and the waterlevel *.bc file
* See subclasses DCSM and Guayaquil for examples of constructor parameters

**Class : model = Model(ext, data_list, sub, tref, model_dir)**

**constructs constituent boundaries for coastal model boundaries**
* Constructed using an ext file produced by Tide.initiate_tide(), a path to data resulting from the Query.build_query() method, a sub list (either as a list or a sub file), a reference time, and an out model dir
* Model.initiate_model() produces *.bc files for the requested constituents/subs
* See subclasses DCSM and Guayaquil for examples of constructor parameters
* see the dictionary usefor in units.py for implemented constituents

# Example of usage for a single pli (see example.py)

import tide

import query

import model

import datetime

**QUERY - DATA DOWNLOAD**

time_vect  = {'t_start' : '2017-05-15 12:00:00',
              't_end'   : '2017-09-15 12:00:00'}
              
dataset    = 'physchem'

user       = 'JohnDoe'

pwd        = '*****'

out        = 'd:\\projects\\DWAQ_CMEMS\\tests\\Med\\out\\'

coords     = [0, 2, 39, 42]


medq = query.Query(time_vect, dataset, coords, user, pwd, out)

medq.build_query()

medq.send_request()

**TIDE - TIDE BOUNDARY**

fes_path = 'p:\\1206126-nevref\\Maialen\\DATA\\fromCornelis\\FES2012\\fes2012\\data\\'

pli      =  r'd:\projects\DWAQ_CMEMS\tests\Med\in\Boundary01.pli'

out      = 'd:\\projects\\DWAQ_CMEMS\\tests\\Med\\out\\'

medtide  = tide.Tide(fes_path, coords, pli, out)

medtide.initiate_tide()

**MODEL - CONSTITUENT BOUNDARY**

ext = medtide.ext

data_list = r'd:\\projects\DWAQ_CMEMS\\tests\\Med\\out\\data\\*.nc'

sub       = ['salinity', 'temperature', 'uxuy', 'steric']

tref      = datetime.datetime(2000,1,1,00,00,00)

model_dir = medtide.out

medmod    = model.Model(ext, data_list, sub, tref, model_dir)

medmod.build_boundary(interp = True, simultaneous = True)

**(the steps excluding the download step can now be re-run for additional pli files in a for loop)**

# To-do
* (Maybe) implement improved Model.boundary_from_ext() as per dflowutil. Currently a boundary is defined by a pli, and a pli has a type as defined by the constituent residing one line up. 
  If the type is waterlevel (WL) then the computation is conducted. In reality, the same pli could be used multiple times, and be associated with 3 or more types. The type of the pli will be the last constituent type assiciated with it.
  If there are multiple constituents that share a boundary there is no guarantee the last one is WL. In this case the pli will not be labelled as a WL boundary, and constituents will not be created for it. 
  For hydrodynamics this is less important (as sal and temp are skipped likely because they already exist), but this is inappropriate for WAQ. Therefore, currently the ext file should contain only the waterlevel constituent for any boundary
  that additional constituents are to be written for.
* Multiple plis can be dealt with using a for loop. However, the ext file will only reflect the last pli. Manual copy and paste is required.
* River loads based on Emilio Mayorga et al., (2010)

# Known issues
* There is no check done on whether a server request was ultimately rejected after 10 failed attempts. Funtionality has been started to address this in linux. The script will not work correctly if different constituents have data covering different time periods.
* (If ext file does not come from Tide.initiate_tide()) The routine to create the *.ext file was designed for water quality constituents, and so if the tool is used to make salinity and temperature boundaries, the *.ext file might need to be manually adjusted if previous salinity and temperature values were specified. All new boundaries are simply appended to the existing *.ext file.

