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

| Version       | Author        | Notes     |
| ------------- |:-------------:| -----:    |
| 0             | M. Minin      | template  |
| 1             | M. Minin      | release   |

* * *

## Requirements and dependencies
 Java, [Aladin v10.056 (official version)](http://aladin.u-strasbg.fr/java/nph-aladin.pl?frame=downloading)

## Use case
Querying data on EPN1 DaCHS server with ADQL from Aladin, plotting table as points and footprints, loading and projecting data lined in access_url.

## Keywords
* Pangaea-X-2017
* Earth Analog 
* Aladin

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
2. Right-click on the table "ESA PANGEA-X 2017"

  ![2](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-2_Aladin_Earth_Analog_small.png)
  
3. Click "Load" 
4. Set Max rows to "100".

  You should see ADQL query on the bottom panel change to "SELECT TOP 100 * FROM pangaea_x_2017.epn_core"
  
  ![3](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-3_Aladin_Earth_Analog.png)
  
5. Click "Submit", then close TAP access window.
6. Double click on the table that appeard on the right hand (layers) panel, use wheel to zoom.

  This will center view on the features and open the data explorer panel on the bottom.
  
  ![4](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-4_Aladin_Earth_Analog_small.png)

### Third step - displaying footprints and projecting data

1. Hover over to view the footprint, click on "FoV" button in the s_region column to display footprint permanently

  ![5](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-5_Aladin_Earth_Analog_small.png)
  
2. Measure the angular distance across the footprint using a distance tool. Take note of your measurement, also record the c1 and c2 values from the table view.

  ![5a](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-5a_Aladin_Earth_Analog.png)
  
  E.g.: c1min=346.286746, c2min=29.019753, ang. distance = 509.9mas.
  
2. Click on a button in the access_url column to open coverage, use mouse wheel to zoom

  ![6](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/6_Aladin_Earth_Analog_small.png)
  
3. Open properties

  ![7](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/7_Aladin_Earth_Analog.png)
  

4. Record the size of the image (E.g.: width = 4000px, height=3000px.) and click on the create new projection button (under Astronometrical reduction)

  ![8](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/8_Aladin_Earth_Analog.png)
  
5. Open "by WCS header" and change values CRVAL1 to c1min, CRVAL2 to c2min.
   Compute the pixel angular size in degrees = footprint angular distance / sqrt(width^2+height^2)
   E.g. 509.9 mas / sqrt(4000^2+3000^2) = 0.079633 mas / 3,600,000 mas/deg = 2.8327*10^-8
   
   Enter this value in CD1_1 and CD2_2. 

   CDx_x are elements of the transformation matrix [[CD1_1,CD1_2],[CD2_1,CD2_2]]. 
  
   For an image without distortion a transfomation matrix is the identity matrix [[1,0],[0,1]] multipied by the scale. 
   
  ![8a](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/8a_Aladin_Earth_Analog.png)
   
6. Now that the image is correctly positioned, a rotation transformation matrix needs to be applied to it.
   The clockwise rotation matrix is [[cosθ, sinθ], [sinθ, -cosθ]], where angle θ is the camera yaw.
   The previous transformation matix needs to be multiplied by a rotation matrix using dot product.
   This can be done with python code as follows:
```
TranslationMtrx=np.matrix([[2.8327*10**-8,0],[2.8327*10**-8,0]])
Theta=-165.7*np.pi / 180
RotationMtrx = np.matrix([[np.cos(Theta), np.sin(Theta)], [-np.sin(Theta), np.cos(Theta)]])
Transformation=TranslationMtrx*RotationMtrx
```
Note that since the WCS transformation uses the celestial sphere, the values in the final transformation matrix need to be rearranged before writing them to WCS header.
```
CD1_1=-Transformation[0,1]
CD1_2=-Transformation[0,0]
CD2_1=Transformation[1,0]
CD2_2=-Transformation[1,1]
print ([CD1_1,CD1_2,CD2_1,CD2_2])
```

  ![8b](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-8b_Aladin_Earth_Analog.png)

6. Switch the focus to the HiPS basemap layer when updating the projection for an image, and make sure that the global projection is set to Spheric to make Aladin work faster. Update the projection and turn on visibility on the image layer.
Now the picture should fit the footprint precisely.

  ![9](https://raw.githubusercontent.com/epn-vespa/tutorials/master/Aladin-Earth-Analog/img/B-9_Aladin_Earth_Analog_small.png)

## References

TBA + URL


## Links
[http://aladin.u-strasbg.fr/](http://aladin.u-strasbg.fr/)
