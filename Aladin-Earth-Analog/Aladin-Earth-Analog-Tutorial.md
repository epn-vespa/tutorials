## Visualizing Pangaea-X-2017 data in Aladin

* [Authors](#authors)
* [Change log](#change-log)
* [Requirements](#requirements-and-dependencies)
* [Use case](#use-case)
* [Keywords](#keywords)
* [Summary](#summary)
* [Introduction](#introduction)
* [Steps](#steps)
* [References](#references)
* [Links](#links)

## Authors:

M. Minin

## Change log

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 0             | name          | test   |

* * *

## Requirements and dependencies
 Not applicable

* * *

## Use case
exoplanets TBA

## Keywords
* term 1
* term 2 

## Summary
TBA

## Introduction

## Steps

### First step - Load basemap
1. Open Aladin
2. In the available data panel, unfold "Collections" > "Solar system" > "Earth" 
3. Double click on "Blue Marble Next Generation w/ Topography and Bathymetry"
4. Zoom out with mouse wheel

![1](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/1_Aladin_Earth_Analog_small.png)

### Second step - send ADQL query to EPN1
1. In the available data panel, unfold "Others" > "Table (by TAP)" > jacobsuni
2. Right-click on any table

  ![2](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/2_Aladin_Earth_Analog_small.png)
  
3. Click "Load" 
4. Change Mode to "Generic", set Table to "pangaea_x_2017.epn_core", set Max rows to "100".

  You should see ADQL query on the bottom panel change to "SELECT TOP 100 * FROM pangaea_x_2017.epn_core"
  
  ![3](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/3_Aladin_Earth_Analog.png)
  
5. Click "Submit", then close TAP access window.
6. Double click on the table that appeard on the right hand (layers) panel, use wheel to zoom.

  This will center view on the features and open the data explorer panel on the bottom.
  
  ![4](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/4_Aladin_Earth_Analog_small.png)

### Third step - displaying footprints and projecting data

1. Hover over to view the footprint, click on "FoV" button in the s_region column to display footprint permanently

  ![5](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/5_Aladin_Earth_Analog_small.png)
  
2. Measure the angular distance across the footprint using a distance tool. Take note of your measurement, also record the c1 and c2 values from the table view.

  ![5a](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/5a_Aladin_Earth_Analog_small.png)
  
  E.g.: c1min=346.286746, c2min=29.019753, ang. distance = 908.6mas.
  
2. Click on a button in the access_url column to open coverage, use mouse wheel to zoom

  ![6](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/6_Aladin_Earth_Analog_small.png)
  
3. Open properties and record the size of the image

  ![7](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/7_Aladin_Earth_Analog.png)
  
  E.g.: width = 4000px, height=3000px.

4. Click on create new projection button (under Astronometrical reduction)

  ![8](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/8_Aladin_Earth_Analog.png)
  
5. Open "by WCS header" and change values CRVAL1 to c1min, CRVAL2 to c2min.
   Compute the pixel angular size in degrees = footprint angular distance / sqrt(width^2+height^2)
   E.g. 908.6 mas / sqrt(4000^2+3000^2) = 0.18172 mas / 3,600,000 mas/deg = 5.048*10^-8
   
   Enter this value in CD2_2 and negative of this value into CD1_1. 

   CDx_x are elements of the transformation matrix [[CD1_1,CD1_2],[CD2_1,CD2_2]]. 
  
   For an image without distortion a transfomation matrix is the identity matrix [[1,0],[0,1]] multipied by the scale. 

6. Switch the focus to the HiPS basemap layer when updating the projection for an image, and make sure that the global projection is set to Spheric to make Aladin work faster. Update the projection and turn on visibility on the image layer.
Now the pixture should fit the circle precisely.

  ![9](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/8_Aladin_Earth_Analog.png)

## References

TBA + URL


## Links
e.g. to working mybinder version where relevant, repos, jupyter notebooks, desktop tools/plugins or alike.
