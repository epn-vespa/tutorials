#EPN-TAP services: looking for and plotting atmospheric profiles

[Authors](#Authors)  
[Change Log](#Log)  
[Steps](#Steps)  
[References](#References)  


<h2 id="Authors">Authors</h2>

S. Erard, B. Cecconi, P. Le Sidaner  

<h2 id="Log">Change Log</h2>

First converted by [Keyuan Yin](https://github.com/megadiesel705) from VESPA's official wiki.  

<h2 id="Steps">Steps</h2>

###1

Go to EPN-client, search for "titan" (lower cases is safer)  [This site](http://voparis-europlanet-new.obspm.fr)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/1_EPN_Client.png" width="500" alt="1">  

###2

Launch TopCat from your desktop or from theEPN-client web page (demo version = 4.0)  [This site](http://www.star.bris.ac.uk/~mbt/topcat/topcat-full.jnlp)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/2_Launch_TOPCAT.png" width="500" alt="2">

###3

The list of connected tools automaticallyincludes the EPN-TAP client  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/3_list_of_connected_tools.png" width="500" alt="3">  


###4

EPN-client results are grouped by data service —select "profiles in Titan atm." for Cassini/CIRS data  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/4_grouped_results.png" width="500" alt="4">  

###5

Select individual profiles of interest (single click) then "Samp VOTable selection"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/5_Select_individual_profiles.png" width="500" alt="5">  

###6

A VOTable is forwarded to TopCat [*you may have to authorize java applets*]  Click button to see the table describing the "granules"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/6_table_describing_granules.png" width="500" alt="6">  

###7

Profile locations are readily plotted  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/7_plot.png" width="500" alt="7">  

###8

The data themselves are contained in another VOTable referenced in the granule table  — however, it is currently impossible to send a VOTable from TopCat to TopCat  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/8_another_VOTable.png" width="500" alt="8">  

###9

Back in the client result page, click "Samp dataselection"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/9_result_sample_button.png" width="500" alt="9">  

###10

[*Alternatively, you can open a data VOTable from TopCat  Copy field "access_url" & paste it in Open dialog/Location field*]  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/10_open_from_TOPCAT.png" width="500" alt="10">  

###11

This new table contains the data themselves  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/11_Table.png" width="500" alt="11">  

###12

Profile data can be plotted in TopCat invarious forms  Publication-ready plots can be saved directly  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/12_publication_ready_form.png" width="500" alt="12">  

###13

The VOTable can be transmitted to other VO ploting tools, e. g. VOplot   
[*alternatively, copy URL on disk then open in VOplot*]  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/13_transmitting.png" width="500" alt="13">  

###14

VOplot offers other plotting services[click "plot" in right menu]http://vo.iucaa.ernet.in/%7Evoi/voplotws/voplot.jnlp

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/14_VOPlot_other_service.png" width="500" alt="14">  

###15

The data VOTable can be visualized in a browser  [*ascii file with xml tags*]  
[*paste data VOtable URL in your browser*]  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/15_VOTable_browser_visualize.png" width="500" alt="15">  


###16

The data table can be saved from TopCat in simple ascii format, as well as CSV, FITS…  e.g. for ingestion in IDL/GDL or other environments  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-looking-for-and-plotting-atmospheric-profiles/img/16_TOPCAT_format_saving.png" width="500" alt="16">  



<h2 id="References">References</h2>

Please refer this tutorial to the original version in VESPA's wiki.  

