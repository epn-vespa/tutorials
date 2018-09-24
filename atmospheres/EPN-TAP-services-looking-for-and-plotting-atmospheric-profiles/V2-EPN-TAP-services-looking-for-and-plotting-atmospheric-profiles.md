#EPN-TAP services: looking for and plotting atmospheric profiles

[Authors](#Authors)  
[Change Log](#Log)  
[Steps](#Steps)  
[References](#References)  


<h2 id="Authors">Authors</h2>

S. Erard, B. Cecconi, P. Le Sidaner, M. Gangloff

<h2 id="Log">Change Log</h2>  

|Version|Name|Note|
|---|---|---|
|1|[Keyuan Yin](https://github.com/megadiesel705)|Converted from [VESPA's official wiki](http://voparis-europlanet.obspm.fr/utilities/Tuto_Titan_TopCat.pdf)|
|2|[Keyuan Yin](https://github.com/megadiesel705)|Updated version on Feb. 2017|

<h2 id="Steps">Steps</h2>

###1

Go to VESPA main user interface, search for "Titan" and submit  
[This site](http://vespa.obspm.fr)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/1_.png" width="500" alt="1">  

###2

VESPA results are grouped by data service  select "Titan" service for Cassini/ CIRS data  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/2_.png" width="500" alt="2">

###3

Individual profiles are displayed on each line  All are described with many parameters in column (click "Show all")  You can go back to the search form and add constraints to limit your search (e.g., by local time, season, or time range)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/3_.png" width="500" alt="3">  


###4

Parameters can be visualized in TOPCAT  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/4_.png" width="500" alt="4">  

###5

Launching TOPCAT from your desktop is quicker  (but not necessarily up to date - demo version = 4.3)  
[This site](http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.jnlp)

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/5_.png" width="500" alt="5">  

###6

The list of connected tools automatically includes the VESPA search interface

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/6_.png" width="500" alt="6">  

###7

Select individual profiles of interest (single click) then "Metadata selection / Send table"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/7_.png" width="500" alt="7">  

###8

A VOTable is forwarded to TOPCAT [you may have to authorize java applets]Click button to see the table describing the "granules"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/8_.png" width="500" alt="8">  

###9

Profile locations are readily plotted Use Sky Plot mode  In Axes/Projection, unselect "Reflect longitude axis" to plot E longitudes as in table  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/9_.png" width="500" alt="9">  

###10

The data themselves are contained in another VOTable referenced in the granule table — however, it is currently impossible to send a VOTable from TOPCAT to TOPCAT  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/10_.png" width="500" alt="10">  

###11

Back in VESPA result page,click "Data selection / Send as table"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/11_.png" width="500" alt="11">  

###12

[Alternatively, you can open a data VOTable from TOPCAT]  [Copy VESPA field "access_url" & paste it in Open dialog/Location field]  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/12_.png" width="500" alt="12">  

###13

This new table contains the data themselves

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/13_.png" width="500" alt="13">  

###14

Profile  data can be plotted in TOPCAT in various forms  
Publication-ready plots can be saved directly  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/14_.png" width="500" alt="14">  

###15

The VOTable can be transmitted  
to other VO ploting tools, e. g. VOplot [alternatively, copy URL on disk then open in VOplot]  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/15_.png" width="500" alt="15">  


###16

VOplot offers other plotting services [click "plot" in right menu]

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/16_.png" width="500" alt="16">  

###17  

The data VOTable can bevisualized in a browser [ascii file with xml tags]  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/17_.png" width="500" alt="17">  

###18  

The data table can be saved from TOPCAT in simple ascii format, as well as CSV, FITS...  e. g., for easy ingestion in IDL/GDL or other environments  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img_v2/18_.png" width="500" alt="18">  


<h2 id="References">References</h2>

Please refer this tutorial to the original version in [this original site](http://voparis-europlanet.obspm.fr/utilities/Tuto_Titan_TopCat.pdf).  