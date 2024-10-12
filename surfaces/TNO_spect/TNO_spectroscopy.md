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

 
### 1- Identify target of interest

Several EPN-TAP data services provide dynamical properties of small bodies: MPC, NEOCC, MP3C, DynAstVO, etc.

Specialists identify objects that belong to a dynamical class from these services, using a combination of orbital parameters. In some cases, such classes may be indicated. Here, we can identify TNOs from the MPC service by issuing a simple query: 

``
SELECT * FROM mpc.epn_core WHERE "orbit_class" LIKE '%Distant object%' 
``

This returns a list of ~ 5700 objects with names and properties


### 2- Getting the spectra

The spectro\_asteroids service is a large collection of small body spectra, although those are grouped in dynamical classes.
The list retrieved in step 1 can be used to query this service from target names — thanks to the homogeneity of EPNCore. 

The easiest way to perform this is to use TOPCAT:

* Send the above query to the MPC service from TOPCAT (or do it in the VESPA portal and SAMP the result table to TOPCAT)
* Grab the whole table from spectro\_asteroids - you may need to remove the limit of answers in TOPCAT ("Max Rows" field):

``
(SELECT * FROM spectro\_asteroids.epn_core WHERE ("target_class" LIKE '%asteroid%')
``

* In TOPCAT run a Pair match (from the Join menu) from the two tables, with algorithm Exact, Matched Value = target_name in both cases.
* This will return a list of 45 spectra of TNO (at the time of writing)

Links to the spectra are available under access\_url in this table.

To plot the spectra in TOPCAT:

* Go to Activate actions (in menu Views)
* With the match table selected, click Plot Table in the left menu
* The plot window will open and display something. 
* Set up the display as you wish
* clicking a row will plot the current spectrum


### 3- Alternative solutions
 
Alternative solutions exist:

* You can upload the target list to the service publishing the spectro\_asteroids and run a cross match on the server (although not all TAP server allow this). This is especially convenient is the second service is too large to be downloaded easily.
* You can do something similar in python, using the astropy library. The target list can be used to send individual queries (one per target) to the spectrum service.



