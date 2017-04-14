## Virtis / Venus Express demo

* [Authors](#Authors)  
* [Change Log](#Log)  
* [Steps](#Steps)  
* [Reference](#Reference)  


<h2 id="Authors">Authors</h2>


S. Erard, B. Cecconi, P. Le Sidaner, F. Henry, R. Savalle, C. Chauvin  


<h2 id="Log">Change Log</h2>


|Version|Name|Notes|
|---|---|---|
|1|Keyuan Yin|First converted|
|2|Keyuan Yin|Updated version below|


<h2 id="Steps">Steps</h2>


**Go to [VESPA web site](http://vespa.obspm.fr)**  

- Check "All VO"
to access public
data services  
- Enter search parameters:  
e.g.:  
Target\_Name = Venus
Dataproduct_type = cube
- Add constraints/filters  
For instance:  
time\_min = 3/6/2006 & time_max = 28/8/2006  
C2\_max (= latitude) < 0 [in Location tab]  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/1_.png" width="500" alt"1">  

**Service results**  
- In line VVEx, click the "Display results" icon to get result list  

You can also click "Advanced query form"
to access specific parameters (local time…)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/2_.png" alt="2">  

**Query results**

Result is a list of files matching the query  

- Click "Show all"
to see other parameters  
- Hover the mouse to
see thumbnails  
- Click to select one or
more lines & click "Data
selection" / Download  
to download files from
the PSA  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/3_Query_results.png" width="500" alt="3">  


**Displaying footprints**   

- Select correct target  
- Click "Footprints" /
Send GeoJSON to
display bounding box in
Mizar  
- Click "Footprints" /
Send s_region to display
footprint in Aladin  

- "GeoJSON" will open Mizar in a
new browser tab and display the
bounding box on a 3D sphere  
- "s_region" will launch Aladin and
display a more precise footprint on
a 3D sphere, here as a red contour
(first load HIPS file of target manually to
display background map)
In both cases you can rotate, zoom in/
out, etc  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/4_Display_footprint.png" width="500" alt="4">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/5_display_footprint_2.png" width="500" alt="5">  


**Launch VO tools**
either from buttons or from your system  
Favorite tools include:  
Aladin & DS9: images & cubes  
TOPCAT: tables & catalogues  
CASSIS & SPLAT/Specview/VOspec: spectra  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/6_Analyzing_results.png" width="500" alt="6">  

**Analysing dataset**  

Click "All Metadata" /
Send Table
=> TOPCAT will
receive a description
of all files  
You can also select some lines &
click "Metadata selection"  

In TOPCAT,
double-click table
name to open it  
Click menu buttons
to get description of fields  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/7_Analyzing_results_2.png" width="500" alt="7">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/8_Analyzing_.png" width="500" alt="8">  

- Click Sky-plotting icon
[or menu Graphics/Sphere plot (old) ]  
Select parameters c1min & c2min
(= lon / lat min - this is not the entire cube
footprints)  
=> Spherical map  
In Form tab, select Mode = "Aux"
with Local_time_min as parameter
to get colors  
(coordinate -c1min should be used to get a correct plot
in longitude — it is interpreted as a right ascension.
"Sphere plot" from the Graphics menu uses c1min)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/9_Skyplot_icon.png" width="500" alt="9">

- Click plane-plotting icon  
Select parameters C1min & C2min => Cylindrical map  
Some values are out of bound  
Select region of correct points  
(0/360° and -90/90°) with shift-drag andclick "Define subset"  
Call it "OK2"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/8_plane-plotting.png" width="500" alt="10">  

- continue: Click plane-plotting icon  
Select parameters time_min & C2min  
Select "OK2" in Subsets tab  
Select Mode=Aux & "C1min" in Form tab => Coverage through time  
Clicking a point in any plot enlights it in other plots and tables => you can easily track outliers  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/9_plane-plotting_2.png" width="500" alt="11">  

- In plane plot, click SizeXY option  

In c1min vs c2min plot, define coordinates and sizes as in example.  
This provides a rough approximation of the footprints in cylindral projection (the actual footprints are inside the boxes)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/10_SizeXY_option.png" width="500" alt="12">  

**Analysing cubes**  

Select one line &
click "Data
Selection" / Send
VIRTIS PDS cubes
(use a VIRTIS-M cube,
with name starting in VI or
VV)  

=> will send a cube
to APERICubes  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/13_analyzing_cubes.png" width="500" alt="13">  


**Visualization of spectral cubes**  

Validate all dialogues
(and wait a bit)  
Will open a new tab in
your browser  
Select channel 75
(O2 emission on night side)  
Adjust contrast by clicking &
dragging mouse over image  
Click location in image  
corresponding spectrum will plot
below  
You can also select a box region
and move it on the image =>
average spectrum and box
statistics  

(with VOtools launched)  
Check Samp status  
(if not connected click
"Register with SAMP HUB")  
Click on a "Send… via
SAMP" button  
Images and cubes will display in
Aladin  
Spectra will display in TOPCAT,
CASSIS, VOspec, Specview, etc  
(PDS3 data have been read & converted to
FITS files in a local IDL or GDL session)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/14_Visualization.png" width="500" alt="14">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/15_Visualization.png" width="500" alt="15">  




**Future developments to be implemented:**  
- Geometry parameters: illumination angles, disk intercept, tangent altitude, etc  
- Cube footprints (KML / GoogleEarth type?) + mosaicking in a GIS or Aladin  
- Link to related geometry file  
- Bulk download from VESPA (on PSA side? Should accept a VOTable with URLs)  
- PDS3 reader/FITS converter (see APERICubes, currently a demo, & link to VESPA) Currently handles only M cubes, no geometry.  
All these points to be studied during Europlanet H2020  


**Spectral tools: TOPCAT**  

TOPCAT receives spectra from APERICubes, can overplot selections  
- Use "Plane plot" & check parameters  
- Click "New line form" to connect spectral channels  
- Click "Add new plot" to overplot spectra  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/13_Spectral_tools_TOPCAT.png" width="500" alt="16">  

****
**Spectral tools: Specview**  

Specview receives spectra from APERICubes  
Includes analysis functions  

- Click on "Measure" to perform continuum and band measurements  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/14_Spectral_tools_Specview.png" width="500" alt="17">  

- continue Click on "Line IDs" to query band line
databases (from VAMDC)  
pick uprelevant ones  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/15_Spectral_tools_Specview_2.png" width="500" alt="18">  

****
**Spectral tools: CASSIS**  

CASSIS receives spectra from APERICubes, can overplot a selection of spectra and manipulate them  

- Click the "Tools" tab to combine spectra
Spectra are resampled to a common wvl vector
on the fly  
The "Species" tab accesses internal line databases
(most of them related to the ISM)
Includes LTE and RADEX modeling  

- Press "shift" to get info on mouse location
"Alt"-drag to select a region (used in "Fit" tab)
"Alt"-click to put markers  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/16_Spectral_tools_CASSIS.png" width="500" alt="19">  

****
**Spectral tools: VOSpec**  

VOSpec receives spectra from APERICubes, but does
not recognize units  

- Select Wavelength in micron & Flux in W/m2/μm in input pannel  
Then uncheck "Log" in axes & reselect "W/m2/μm" in flux menu  
- Select "Line" to connect channels  

*Currently does not understand radiance ( W/m2/sr/μm)
or reflectance - being discussed with ESA*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/17_Spectral_tools_VOSpec.png" width="500" alt="20">  

- continue Click "Simple Line Access" button  
Select area of interest  
Select spectral databases in new window  
Once loaded, lines are identified on mouse-over  
- Uses an older protocol which retrieves all lines in a
given range => long and busy  
Databases mostly related to the ISM (atoms)  

*Fitting functions available in "Operations" menu*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/18_Spectral_tools_VOSpec.png" width="500" alt="21">  




**Future developments to be implemented:**  
- Geometry parameters: illumination angles, disk intercept, tangent altitude, etc  
- Cube footprints (KML / GoogleEarth type?) + mosaicking in a GIS or Aladin  
- Link to related geometry file  
- Bulk download from VESPA (on PSA side? Should accept a VOTable with URLs)  
- PDS3 reader/FITS converter (see APERICubes, currently a demo, & link to VESPA) Currently handles only M cubes, no geometry.  
All these points to be studied during Europlanet H2020  


**VESPA to APERICubes connection (demo)**  
During the test phase:  

- Download library jsamp  
http://dev.lsstcorp.org:8081/nexus/content/repositories/ccs-maven2/org/astrogrid/jsamp/1.3.5/  

- Launch from terminal with options:  
java -jar jsamp-1.3.5.jar hub -web:norestrictmtypes &
(this is currently required to handle the special file type)  

- Go to APERICubes page and register to the SAMP hub as previously  

- Go to VESPA page, select one VIRTIS file as previsouly
- In menu "SAMP selection as" pick up "cubes PDS VIRTIS" (for the sake of the demo)
- Validate dialogues (one in pop-up window + one in the browser)
- Click "Process SAMP cube" in APERICubes page  
- Proceed as previously  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/19.png" width="500" alt="22">  


**Powerful searches on location**  

In "Direct Query" tab  
- Select service  
- Enter ADQL query on
s_region footprint  

Will return cubes with footprint intersecting
or containing a polygon, circle, or point

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/23_Search.png" width="500" alt="23">

**VO functions**  

- VESPA provides search functions to the PSA VVEx dataset
- TOPCAT provides quick-look of table information
- APERICubes will provide on-line visu & basic analysis functions to a single cube
Will also provide conversion from PDS3 to VO format (FITS) & link with other VOtools
- Aladin, Specview, CASSIS, etc can display images / cubes / spectra from APERICubes  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/20_VO_functions.png" width="500" alt="24">  

**Search other datasets**   
VESPA sends queries to several data services in parallel. In the long term it will access:  

- other VEx instruments => Cross correlate all VEx measurements with a single query
- derived data / results of various analyses from VIRTIS (outside PSA)
- reference data, other Venus missions, coordinated ground-based observations, lab spectra, simulations, etc  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/21_Search_other_datasets.png" width="500" alt="25">  



**Possible extension to the Virtis VEx data service**  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/22_possible_extension.png" width="500" alt="22">  

****


<h2 id="Reference">Reference</h2>


Please refer this tutorial to PDF file uploaded on VESPA wiki and also the [website](http://vespa.obspm.fr)  

