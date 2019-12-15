# COASTSERV_Model
A program for nesting coastal DFM and DFMWAQ models in FES tide model output and CMEMS MERCATOR global physiochemical and biogeochemical model output. It includes utilities for downloading and processing the data. 
Designed as a backend for a webapp. **script branch, previously master, is no longer supported. Old FlaskApp branch is now master as of Dec 15 2019.**

# Prerequisites
* see requirements.txt. 

**other requirements:**
* a CMEMS account
* a D-FLOW FM *.pli file
* python must be in PATH environment variable
* must copy your copy of the FES tide output to ~/app/coastserv/static/FES/. Please go to https://www.aviso.altimetry.fr/data/products/auxiliary-products/global-tide-fes/description-fes2012.html for more details

# Webapp usage
first clone the repo, then:

$ conda env create -f coastserv.yml <br>
$ conda activate coastserv <br>
$ export FLASK_APP=run.py <br>
$ cd app <br>
$ flask run <br>

Go to the local IP provided in the console and provide the necessary input. Note that $ export should be changed to $ set in windows.<br>
The program makes a boundary file for each pli with the suffix '_tmp'. If more than 1 pli is needed, merge the contents of the ext files once all have been processed.<br>
In the event that a process goes wrong, you can use test_boundary.py and test_tide.py to make boundary files individually if you do not want to re-download all of the netCDF files.<br>

**For water quality simulations:**<br>
Please examine the file ~/app/coastserv/models/units/units.py to adjust the unit conversions to be congruent with the D-WAQ sub file that will ultimately be used.

# To-do
* River loads based on Emilio Mayorga et al., (2010). Currently we do not have access to this data.

# Known issues
* The use of the water level (steric) correction is still not verified conceptually and should be used with care.
* D-FLOW FM does not yet support advection boundaries that prescribe advection *out* of the model. Use with care.
* BLOOM models are not yet supported, but

