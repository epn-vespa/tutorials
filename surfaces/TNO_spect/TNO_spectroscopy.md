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





### Keywords
Spectroscopy
Service

## Summary
This tutorial describes how to retrieve spectra of TNOs, when these targets are not identified in spectral services

## Introduction

EPN-TAP services includes generic list of asteroids with dynamical properties, and spectral databases of small bodies. In the latter, the dynamical type is not usually provided. To retrieve spectra of TNOs, is it therefore necessary to identify TNOs from a first service, then to query a spectral service with a list of targets. This is not directly feasible in the VESPA portal, but there are several ways achieve this.


## Tutorial

 
### 1- Identify targets of interest

Several EPN-TAP data services provide dynamical properties of small bodies: MPC, NEOCC, MP3C, DynAstVO, etc.

Specialists can identify objects that belong to a dynamical class using a combination of orbital parameters provided by from these services. In some cases however, such classes may be readily indicated. Here, we can identify TNOs from the MPC service by issuing a simple query: 

``
SELECT * FROM mpc.epn_core WHERE "orbit_class" LIKE '%Distant object%' 
``

As of writing, this returns a list of ~ 5700 objects with names and properties


### 2- Getting the spectra

The spectro\_asteroids service is a large collection of small body spectra, but those are not grouped in dynamical classes.
The list retrieved in step 1 can be used to query this service from target names, thanks to the homogeneity of EPNCore. 

The easiest way to perform this is to use TOPCAT:

* From TOPCAT, send the above query to the MPC service (or do it in the VESPA portal and SAMP the result table to TOPCAT)
* In TOPCAT, grab the whole table from spectro\_asteroids - you may need to remove the limit of answers ("Max Rows" field):

``
(SELECT * FROM spectro\_asteroids.epn_core WHERE ("target_class" LIKE '%asteroid%')
``

* In TOPCAT, from the Join menu: run a Pair match between the two tables, with algorithm Exact, Matched Value = target_name in both cases
* This will return a list of 45 spectra of TNO (at the time of writing)

Links to the spectra are available under access\_url in this table.

To display the spectra in TOPCAT:

* In menu Views, go to Activate actions
* With the match result table selected, click Plot Table in the left menu
* The plot window will open and display something
* Set up the display as you wish, e.g.: reflectance(wavelength), with Form = Add line 
* Clicking a row will plot the current spectrum


### 3- Alternative solutions
 
Alternative solutions exist which may be more efficient in some cases:

* You can upload the target list to the server publishing the spectro\_asteroids service, and run a cross match on the server (this is property of the TAP protocole, but some TAP servers may disable it). This is especially convenient is the second service is too large to be downloaded easily.
* You can do something similar in python, using the astropy library. In this case you would loop on the target list and send individual queries to the spectrum service.



