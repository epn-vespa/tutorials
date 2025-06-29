## Finding spectra of TNOs

[Tutorial](#use-case)  
[Authors](#author)  
[Summary](#summary)  
[Introduction](#introduction)  
[Tutorial](#tutorial)  
[Links](#links)  


## Tutorial
Cross correlation of data services

## Author:

S. Erard

### Change log

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 1.0           | S. Erard      | 12/10/2024  |
| 1.1           | S. Erard      | 19/6/2025  |





### Keywords
Spectroscopy
Service

## Summary
This tutorial describes how to retrieve spectra of TNOs, when these targets are not identified in spectral services

## Introduction

EPN-TAP services includes generic list of asteroids with dynamical properties, and spectral databases of small bodies. In the latter, the dynamical type is not usually provided. To retrieve spectra of TNOs, is it therefore necessary to identify TNOs from a first service, then to query a spectral service with a list of targets. This is not directly feasible in the VESPA portal, but there are several ways to achieve this.


## Tutorial

 
### 1- Identify targets of interest

Several EPN-TAP data services provide dynamical properties of small bodies: MPC, NEOCC, MP3C, DynAstVO, etc.

Specialists can identify objects that belong to a dynamical class using a combination of orbital parameters provided by these services. In some cases however, such classes may be readily indicated. Here, we can identify distant objects from the MPC service by issuing a simple query: 

``
SELECT * FROM mpc.epn_core WHERE "orbit_class" LIKE '%Distant object%' 
``

As of writing, this returns a list of ~ 6000 objects with names and properties (including both TNOs and Centaurs, though)


```
Alternative: Use the analytic TNO definition provided e.g. by Astorb / Lowell Obs: 
SELECT * FROM mpc.epn_core WHERE "semi_major_axis" >= 30.0709 
This yields 5337 objects, TNOs only
```

Such queries can be issued from any TAP client, e.g. the VESPA portal or TOPCAT, see Fig. 1.

<img src="img/Query_MPC.png" width="400">

### 2- Getting the spectra

The spectro\_asteroids service is a large collection of small body spectra, but the targets are not described in terms of dynamical class. The list retrieved in step 1 can be used to query this service from the target\_name parameter, thanks to the homogeneity of EPNCore description. 

The easiest way to perform this is to use TOPCAT:

* From TOPCAT, send the above query to the MPC service (or do it in the VESPA portal, then SAMP the result table to TOPCAT)
* In TOPCAT, grab the whole table from spectro\_asteroids - check that you're not limited in number of answers ("Max Rows" field):

``
SELECT * FROM spectro_asteroids.epn_core WHERE ("target_class" LIKE '%asteroid%')
``

* In TOPCAT, from the Join menu: run a Pair match between the two tables. Use: algorithm = Exact Value; Matched Value = target_name in both cases; Match Selection = All matches (to retrieve all available spectra). See Fig. 2.
* This returns a list of 49 spectra of TNO at the time of writing

Links to the spectra are available under access\_url in this table.


<img src="img/match_TNOs.png" width="400">

To display the spectra in TOPCAT:

* With the match result table selected, go to Activation actions in menu Views 
* Click Plot Table in the left menu
* The plot window will open and display something
* Set up the display as you wish, e.g.: reflectance(wavelength), with Form = Add line 
* Clicking a row will plot the current spectrum
* The Load table action works similarly


### 3- Alternative solutions
 
Alternative solutions exist which may be more efficient in some cases:

* You can upload the target list to the server hosting the spectro\_asteroids service and run a cross match on the server. This is especially convenient if the service you're mining is too large to be downloaded easily. This functionality is available from TOPCAT and other TAP clients, or in python using the astropy library. "Upload Join" is a property of the TAP protocol, but some TAP servers may disable it - in particular you are limited in upload size, so it is better to reduce the size of the target list to a minimum:

```
; target list from service MPC (will load as t9 in this TOPCAT session):
SELECT target_name FROM mpc.epn_core WHERE "orbit_class" LIKE '%Distant object%' 
;
; join on service spectro_asteroids:
SELECT TOP 100 *
  FROM spectro_asteroids.epn_core AS db
  JOIN TAP_UPLOAD.t9 AS tc
    ON (db.target_name = tc.target_name)
```


* Alternatively, in python you can loop on the target list and send individual queries to the spectrum service. This also makes it possible to retrieve spectra from several services. 



