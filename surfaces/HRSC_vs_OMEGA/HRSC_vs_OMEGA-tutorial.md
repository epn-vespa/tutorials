## Exploring exoplanets

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

S. Erard

## Change log

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 0.1           | S. Erard      | 4/6/2019  |

* * *

## Requirements and dependencies
None

* * *

## Use case
Identifying matching files at the surface of Mars (Mars-Express/HRSC and OMEGA services)


## Keywords
* Surfaces 
* Observations
* Images
* Image cubes

## Summary
This short tutorial shows how to search for associated data files in various services.


## Introduction

HRSC is the main camera on board Mars-Express, OMEGA is the imaging spectrometer. Both acquired large datasets from early 2004, and now provides a nearly complete coverage of Mars. The hrsc3nd and omega_cubes services available in VESPA are used here to illustrate the common problem of idenfying observations of the same area from two different instruments. Note that these two services only contain subsets of the original datasets. 

## Steps


### 1- Select OMEGA data of interest
* Go to the VESPA portal, click on the omega_cubes service
* Enter search parameters in the left (query) panel
* For instance, enter orbit_number ≥ 997, orbit_number ≤ 998 and access_format LIKE '%application/octet-stream%'
in the "Other" tab.
* There are 4 results: image cubes acquired on MEx orbits 997 and 998, formatted as IDL save files.
* We're now looking for HRSC images of these areas

<img src="img/img1.png" width="600">

[http://vespa.obspm.fr]

### 2- Send results to TOPCAT and edit the table
* First open TOPCAT on your desktop (or click the TOPCAT icon in the VESPA portal page) 
* Click on All metadata / Send table (below the table)
* TOPCAT will receive a table with 4 rows called omega_cubes (identical to the one displayed in the portal)
* The omega_cubes service does not include an s_region parameter providing the footprint of the observing sessions. We'll build one from the bounding box limits provided in the coordinate parameters (C1/C2 for longitude/latitude, with min/max values).
* Open the table in TOPCAT and add a new synthetic column with 

name: box5 

expression: "POLYGON UNKNOWNFrame "+join(array(C1min, C2min, C1min, C2max, C1max, C2Max, C1max, C2min), " ")
* Do it again with

name: box6

expression: "POLYGON("+join(array(C1min, C2min, C1min, C2max, C1max, C2Max, C1max, C2min), ",")+")"
* You also need to edit the column definition. Click the Display column metadata icon; on rows box5 and box6, type in the field xtype: adql:REGION

* These bounding boxes can be displayed in TOPCAT using SkyPlot window, e.g. with a polygonal form or a quadrilateral layer (see another tutorial)

<img src="img/img2.png" width="600">

* The HRSC service provides the s_region parameter, with the contour sampled at high enough resolution to actually represent the image footprints

### 3- Search HRSC images overlapping one cube
* We'll use a specific 2D search function which is only implemented in the TAP protocol (not in the tools)
* In TOPCAT, select the VO>TAP menu item. Search HRSC by keywords, and click the PRSFUB TAP server + Use service
* In the new window, type in the string field: 

SELECT   *

   FROM hrsc3nd.epn_core where 1=INTERSECTS(s_region, POLYGON(266.762,44.0625,266.762,59.4062,270.934,59.4062,270.934,44.0625) )

where the POLYGON… string is copied/pasted from the omega_cubes table, box6 column for element 997_4_sav
* Click on Run Query. This will load a table containing 2 rows: the 2 HRSC images overlapping the footprint of this OMEGA session.
* See below how to display the results

### 4- Search HRSC images overlapping a set of cubes
* If your selection contains several OMEGA cubes, repeating this process will rapdily become tedious. Instead, this can be achieved with a single query, provided that your search table is first uploaded on the distant server.
* First open the TAP query panel as before. Then type

SELECT *

   FROM hrsc3nd.epn_core

   JOIN TAP_UPLOAD.omega_cubes AS tc

   ON 1=INTERSECTS(s_region, tc.box5)

* You'll now retrieve 17 images overlapping the 4 cubes.

### 5- Displaying the results in Aladin
* Start Aladin (prototype version ≥ 10.128)
* Load the MOLA shaded relief map from the data tree (left panel, under Solar System/Mars), switch Frame to Planet in the upper line. 
* Select the HRSC service from the data tree (under Solar System/Tabular data). Type

SELECT TOP 9999 * FROM hrsc3nd.epn_core 

in the query field, and click Submit
* (optional) Select the new HRSC layer in the right panel, and properties in the local menu (right click)
* (optional) Click Show associated FoV to display the footprints of HRSC images
* From TOPCAT, select the omega_cubes tables and the menu item: INTEROP>Send table to Aladin; do the same for the HRSC… TAP_UPLOAD table 
* In Aladin, select the new omega_cubes layer in the right panel, and properties in the local menu (right click)
* Click Show associated FoV to display the footprints (bounding boxes) of OMEGA cubes - displayed in black in the figure
* Do the same for the HSRC layer - displayed in yellow in the figure


<img src="img/img3.png" width="600">



### 6- To go further
* You can add more parameters to refine the match between services. An obvious addition in the general case would be to look for similar viewing geometries (but the hrsc3nd service only includes nadir images).
* Note that upload in the TAP query in step 4 is required because 1) the two services are located on different servers; 2) one service does not provide footprints in s_region, which is required to search for overlaps.


## References


## Links

See details here to set a correct display on planetary surfaces in TOPCAT:

[https://voparis-wiki.obspm.fr/pages/viewpage.action?pageId=14942383]
