## Installing an EPN-TAP service - broad lines

[Tutorial](#use-case)  
[Authors](#author)  
[Summary](#summary)  
[Introduction](#introduction)  
[Tutorial](#tutorial)  
[Links](#links)  


## Tutorial
Broad guidelines to install an EPN-TAP data service

## Author:

S. Erard, C. Azria

### Change log

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 1.0           | S. Erard      | 12/10/2024  |


### Requirements and dependencies



### Keywords
Data
Service

## Summary
This tutorial describes quickly how to install a new data service in VESPA


## Introduction

VESPA is an facility for Solar System data which is intended to: 

* help users find data of interest for their research
* help research teams make their data available directly at limited cost

VESPA relies on the Virtual Observatory framework, and enlarges it to support Solar System data. It is therefore a distributed infrastructure of data servers connected through a registry. All servers are findable from various client applications.

The baseline is therefore to have one or more servers installed in each contributing institute. If this proves inconvenient, alternative ways exist. 


## Tutorial

 
### 1- Install a data server

The recommended data server for VESPA is DaCHS, provided by the University of Heidelberg. An instance of DaCHS will need to be installed on a fixed IP at your institute. 

To gain familiarity with the service definition process, we recommend to first install DaCHS on Docker on your laptop, and play with it. 

See installation /configuration doc here:
[VESPA_WORKSHOP.pdf](http://www.europlanet-vespa.eu/tutos/VESPA_WORKSHOP.pdf)



### 2- Defining your data service

This step consists in filling a table of metadata in a standard way. The very first step is therefore to identify what are the data/table rows (very often: the individual files), then how to describe them using EPNCore parameters (table columns).

The Excel file below describes standard table columns, it may help you map your current metadata to EPNCore parameters. You just need to fill what makes sense for your data, plus some required parameters (in bold characters):

[EPN-TAP\_parameters\_List\_template.xlsx](img/EPN-TAP_parameters_List_template.xlsx)

This step relies on your expertise on the data. Once you've done this, the simplest way in most cases is to build a CSV table gathering all the information. You can do this from Excel if it sounds convenient.

Some people find it helpful to fill a Data Management Plan early in this process (this is a requirement in some contexts). Examples are available here, which you can adapt to your data: 
https://voparis-wiki.atlassian.net/wiki/spaces/VES/pages/56897003/Individual+DMP+of+EPN2024RI+collections


### 3- Installing the data service
 
The next step is to ingest this table in the server, by writing a short script. See the next part of the installation doc here:
[VESPA_WORKSHOP.pdf](http://www.europlanet-vespa.eu/tutos/VESPA_WORKSHOP.pdf)

A related service definition tutorial provides an example:
[https://voparis-wiki.atlassian.net/wiki/spaces/VES/pages/56900060/Setting-up+an+EPN-TAP+service+Tutorial+for+Beginners](https://voparis-wiki.atlassian.net/wiki/spaces/VES/pages/56900060/Setting-up+an+EPN-TAP+service+Tutorial+for+Beginners)


### 4- File format

The table will include links to your files, which need to be available on the network - not necessarily in your institute (if your data are sets of scalar parameters rather than files, they can be included in the table itself).

There is no requirement on the file format, although of course some are more convenient. 
You normally want to use a standard format in your field if there is one - meaning that you don't have to convert existing files. However:

* It is much better to use a self-described format, with a label containing metadata and references (fits, VOtable, PDS, etc) -  ascii files with no header or CSV files are not really traceable once downloaded.
* you may want to use a format that display tools such as [TOPCAT](https://www.star.bris.ac.uk/~mbt/topcat/) or [Aladin](https://aladin.cds.unistra.fr/) can handle - that would greatly help manipulating your data later.


### 4- Further topics

Please contact the VESPA team for support: support.vespa @ obspm.fr

We can help you start or finalize you data service, and indicate higher level functionalities in VESPA. This includes:

* declaring your server in the registry, so that your data can be found
* preserving your service definition on a common GitLab for sustainability and maintenance
* handling more specific cases (e.g., existing database, collection of fits files, etc)
* getting access through search tools and python libraries, workflows


## Links

More information on VESPA: [http://www.europlanet-vespa.eu/](http://www.europlanet-vespa.eu/)

VESPA data portal: [https://vespa.obspm.fr](https://vespa.obspm.fr)
