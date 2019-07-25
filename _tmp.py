# -*- coding: utf-8 -*-
"""
Created on Tue Jul 23 13:45:14 2019

@author: schueder
"""

import netCDF4 as nc
import numpy as np

import matplotlib.pyplot as plt
import glob
import os
import pylab
import pandas as pd
from sklearn import linear_model
import statsmodels.api as sm
from mpl_toolkits.mplot3d import Axes3D  # noqa: F401 unused import
from scipy.interpolate import  griddata

plt.close('all')
ds = nc.Dataset(r'd:\projects\CMEMS_DATA\so_2012-07-03_12-00-00_2012-10-02_12-00-00.nc')

depths = ds.variables['depth'][:]

lat = ds.variables['latitude'][:]
lon = ds.variables['longitude'][:]
coords = np.zeros((len(lon)*len(lat)*len(depths),3))
ind = 0
# ordering is in line with C-type reshape
# dimensions are time, depth, lat, lon, so alter lon most frequently
for zi, zz in enumerate(depths):
    for yi, yy in enumerate(lat):
        for xi, xx in enumerate(lon):
            coords[ind, :] = [xx, yy, zz]
            ind += 1
X, Y, Z = np.meshgrid(lon, lat, depths)

# DEPTH lat long
arr0 = ds.variables['so'][0,:,:,:]

#arr = np.reshape(arr0, newshape = (len(coords),1), order = 'C')

arr = np.reshape(arr0, newshape = -1, order = 'C')


#ax = Axes3D(plt.figure())
#sc = ax.scatter(coords[:,0], coords[:,1], -coords[:,2], c = arr)

# interpolation mini?
pos_array_x = np.array([[-2,-1,0,1,2],[-2,-1,0,1,2],[-2,-1,0,1,2],[-2,-1,0,1,2],[-2,-1,0,1,2]])
pos_array_y = np.array([[2,2,2,2,2],[1,1,1,1,1],[0,0,0,0,0],[-1,-1,-1,-1,-1],[-2,-2,-2,-2,-2]])

ind = 5
arr = np.zeros((3,3,len(depths)))
X = np.zeros((3,3,len(depths)))
Y = np.zeros((3,3,len(depths)))
Z = np.zeros((3,3,len(depths)))

# TIME DEPTH, LAT LONG
arr = ds.variables['so'][0, :, ind-2:ind+3,  ind-2:ind+3]
y = ds.variables['latitude'][ind-2:ind+3]
x = ds.variables['longitude'][ind-2:ind+3]
z = depths

idx = 0
arrs = np.zeros((arr.shape[0] * arr.shape[1] * arr.shape[2],3))
V = np.zeros((arr.shape[0] * arr.shape[1] * arr.shape[2],1))

for ii in range(arr.shape[0]):
    #y
    for jj in range(arr.shape[1]):
        # x
        for kk in range(arr.shape[2]):
            arrs[idx,:] =[ x[kk], y[jj], z[ii]]
            V[idx] = arr[ii,jj,kk]
            idx += 1
V[V == 0] = np.nan
#ax = Axes3D(plt.figure())
#sc = ax.scatter(arrs[:,0], arrs[:,1], -arrs[:,2], c = V.ravel())
#xii = np.array([np.ones(len(depths)) * (x[1]+0.05), np.ones(len(depths)) * (y[1]+0.05), depths])

#int_val = griddata(arrs, V, xi =xii.T )
#ax.scatter(xii.T[:,0], xii.T[:,1], -xii.T[:,2], c = int_val.ravel())
#ax.scatter(xii.T[:,0], xii.T[:,1], -xii.T[:,2])

# now test it
arr = []



yind = 10
xind = 10
xi = lon[xind] + 0.05
yi = lat[yind] + 0.05
#form query point

xii = np.array([np.ones(len(depths)) * (xi), np.ones(len(depths)) * (yi), depths])

y = ds.variables['latitude'][yind-2:yind+3]
x = ds.variables['longitude'][xind-2:xind+3]
z = depths
times = np.array([1,2,3,4,5,6,7,8])
#for tt in range(0,len(times)):
arr_t = ds.variables['so'][:, :, yind-2:yind+3,  xind-2:xind+3]

# prepare to reshape for the interpolation
arrs = np.zeros((arr_t.shape[0] * arr_t.shape[1] * arr_t.shape[2] * arr_t.shape[3] ,4))
V    = np.zeros((arr_t.shape[0] * arr_t.shape[1] * arr_t.shape[2] * arr_t.shape[3], 1))
idx = 0

# times
for tt in range(arr_t.shape[0]):
    # depths
    for ii in range(arr_t.shape[1]):
        #y
        for jj in range(arr_t.shape[2]):
            # x
            for kk in range(arr_t.shape[3]):
                arrs[idx,:] =[ x[kk], y[jj], z[ii], tt]
                V[idx] = arr_t[tt,ii,jj,kk]
                idx += 1

V[V == 0] = np.nan
# interpolate and apend
interpolated = griddata(arrs, V, xi = xii.T )
arr.append(interpolated)
print(tt)
    
#if not isinstance(arr, np.ndarray):
#    arr = np.array(arr)
#    if arr.shape[0] != len(times):
#        arr = arr.T
