## jra-t4-EPN1-CRISM
CRISM data has been published at [this site](http://epn1.epn-vespa.jacobs-university.de/). This service is registered with IVOA Registry of Registries, and can be found in TOPCAT.  

[Authors](#Authors)  
[Change Log](#Log)  
[Preview CRISM in TOPCAT](#Preview)  
[Displaying CRISM footprint in Aladin](#Display)  
[Accessing subgranule data and importing to CASSIS](#Access)  
[References](#References)

<h2 id="Authors">Authors</h2>
Mikhail Minin et al.

<h2 id="Log">Change Log</h2>
First converted into Markdown file by [Keyuan Yin](https://github.com/megadiesel705) from VESPA Tutorial site.

<h2 id="Preview">Preview CRISM in TOPCAT</h2>
Open TOPCAT (http://www.star.bris.ac.uk/~mbt/topcat/#install).  
Choose VO => TAP Query  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/1_VO_TAP_Query.png?raw=true" width="500" alt="VO_TAP">  

Search for "epn1". Double click.  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/1_epn1_1.png?raw=true" width="500" alt="epn1_1">  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/1_epn1_2.png?raw=true" width="500" alt="epn1_2">  

Select "planetserver_crism.epn_core". Click on "Examples", select "Basic" => "Full table".  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_tap_crism_service_search_select.png?raw=true" width="500" alt="crism.epn_core_1">  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_tap_crism_service_example_basic.png?raw=true" width="500" alt="crism.epn_cor_2">  

Click "Run Query".  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_main_crism_tap_example_result.png?raw=true" width="500" alt="Activation Action">  

Select "Activation Actions" from the main window "Views" menu item.

Select "Display image". Choose "thumbnail_url" for "Image Location". And "Basic" for "Image Viewer". Close the window.  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_actions_table_crism_thumbnail_images.png?raw=true" width="500" alt="Set Activation Action">  

Click on the "Table Browser" button.  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_main_table_select_view.png?raw=true" width="500" alt="Tab Browser View">  

You can now view the table.  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_table_view_select_1st_row.png?raw=true" width="500" alt="Table">  

Clicking on a row should open image preview.  

<img src="https://github.com/epn-vespa/tutorials/blob/master/surfaces/jra-t4-EPN1-CRISM/img/topcat_crism_thumbnail_image.png?raw=true" width="300" alt="row image">  


<h2 id="Display">Displaying CRISM footprint in Aladin</h2>  
Open Aladin web [to start](http://aladin.u-strasbg.fr/java/nph-aladin.pl)  
On the main menu click "File" => "Open URL"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_Open_URL.png" width="500" alt="Open URL">  

Add HiPS :  
http://epn1.epn-vespa.jacobs-university.de:8080/marsmola/Mars-ELATLON-ICRS.hpx  
Click submit.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_Add_HIPS.png" width="500" alt="Add HiPS">  

Open [epn1 TAP Handle](http://saada.unistra.fr/taphandle/?url=http://epn1.epn-vespa.jacobs-university.de/tap) in your browser.  
Open table, add query to search for granule of interest:  
SELECT  \*  
FROM planetserver_crism.epn\_core  
WHERE granule\_uid='HRS00003082\_07\_IF177S\_TRR3'  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_enp1_tap_handle.png" width="500" alt="enp1 TAP Handle">  

Click "SUBMIT".  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_TAP_handle_details.png" width="500" alt="TAP Handle Details">  

Scroll over to "s_region"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_s_region.png" width="500" alt="s_region">  

Click "Broadcast to SAMP" and authorize the connection to Hub.  

Click "Broadcast to SAMP" again, and you should see a "drawing" appear in Aladin.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_aladin_drawing_1.png" width="500" alt="Aladin Drawing 1">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_aladin_drawing_2.png" width="500" alt="Aladin Drawing 2">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/2_aladin_drawing_3.png" width="250" alt="Aladin Drawing 3">  

<h2 id="Access">Accessing subgranule data and importing to CASSIS</h2> 

Open [epn1 TAP Handle](http://saada.unistra.fr/taphandle/?url=http://epn1.epn-vespa.jacobs-university.de/tap) in your browser.  
Click "Data Preview" button in "subgranule_url" field  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_subgranule_url_1.png" width="500" alt="subgranule_url_1">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_subgranule_url_2.png" width="500" alt="subgranule_url_2">  

Click anywhere on the image  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_Subgranule_Further_Check.png" width="500" alt="Further Check">  

To view in CASSIS select and copy the text on the bottom of the page, save with text editor as .fus.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_text_exporting.png" width="500" alt="Text Exporting">  

Open with CASSIS  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_Open_CASSIS.png" width="500" alt="CASSIS Open">  



**UPDATE:**
An option to save spectra as .fus, or to send it directly to CASSIS via SAMP has been added.

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_Spectra_fus_Update.png" width="500" alt="Spectra fus">  

To send via SAMP, first start CASSIS. With CASSIS HUB running the button 
"Broadcast to SAMP!" should be visible.  
After selecting the spectra, click on the button, the spectra should appear in CASSIS.  
It is possible to send multiple spectra, from the same or different coverages.  
This way spectra from sensor L and S can be joined.
The value of Xbot should be set to Wavelength nm:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_Xbot_1.png" width="500" alt="Xbot Value ">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_Xbot_2.png" width="500" alt="Xbot Value ">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/jra-t4-EPN1-CRISM/img/3_Xbot_3.png" width="500" alt="Xbot Value ">  

<h2 id="References">References</h2>  

Please refer this tutorial to original tutorial created  by Mikhail Minin on VESPA wiki.
