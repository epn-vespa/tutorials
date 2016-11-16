#Virtis / Venus Express demo

[Authors](Authors)  
[Change Log](Log)  
[Steps](Steps)  
[Reference](Reference)  

<h2 id="Authors">Authors</h2>

S. Erard, B. Cecconi, P. Le Sidaner, F. Henry, R. Savalle, C. Chauvin  

<h2 id="Log">Change Log</h2>

Firstly converted from PDF file provided by VESPA website by [Keyuan Yin](https://github.com/megadiesel705) 


<h2 id="Steps">Steps</h2>

Go to [VESPA web site](http://vespa.obspm.fr)  

- Click "Custom resource"  to access private  databases  

- Enter Resource URL:  http://voparis-cdpp.obspm.fr/__system__/tap/run/tap- Enter schema name  schema = vvex  This is the demo service of Virtis/VEx:  calibrated files, nominal mission only- Add constraints/filters  For instance:  time_min = 3/6/2006 & time_max = 28/8/  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/1_VESPA_Website.png" width="500" alt"1">  

- Click  "Display results"  to get result list  
(You can also click "Advanced query form"to access specific parameters (local time…))  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/2_Service_results.png" width="500" alt="2">  

Result is a list of files matching the query  
- Click "show columns" to see other parameters  - Click file name to display or download a file from the PSA (*bulk download to be implemented*)   

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/3_query_result.png" width="500" alt="3">  


- Launch VO tools either from buttonsor from your system  
Favorite tools include:  Aladin & DS9: images & cubes  
TOPCAT: tables  CASSIS & SPLAT/VOSpec/Specview: spectra  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/4_query_result.png" width="500" alt="4">  

- Send all results to VO tools=>  
TOPCAT will receive thedescription of all files  *You can also select some lines &"SAMP VOTable selection"*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/5_Send_result.png" width="500" alt="5">  


- In TOPCAT, double-click table name to open it  
*Click menu buttons to get description of field*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/6_TOPCAT.png" width="500" alt="6">  

- Click Sky-plotting icon  
Select parameters c1min & c2min  (= lon / lat min - this is not the entire cubefootprints) => Spherical map  In Form tab, select Mode = "Aux" with Local_time_min as parameter to get colors  (*coordinate -c1min should be used to get a correct plotin longitude — it is interpreted as a right ascension."Sphere plot" from the Graphics menu uses c1min*)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/7_Sky-plotting.png" width="500" alt="7">  

- Click plane-plotting icon  
Select parameters C1min & C2min => Cylindrical map  Some values are out of bound  Select region of correct points  (0/360° and -90/90°) with shift-drag andclick "Define subset"  Call it "OK2"  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/8_plane-plotting.png" width="500" alt="8">  

- continue: Click plane-plotting icon  Select parameters time_min & C2min  Select "OK2" in Subsets tab  Select Mode=Aux & "C1min" in Form tab => Coverage through time  Clicking a point in any plot enlights it in other plots and tables => you can easily track outliers  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/9_plane-plotting_2.png" width="500" alt="9">  

- In plane plot, click SizeXY option  In c1min vs c2min plot, define coordinates and sizes as in example.  This provides a rough approximation of the footprints in cylindral projection (the actual footprints are inside the boxes)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/10_SizeXY_option.png" width="500" alt="10">  

**Future developments to be implemented:**  - Geometry parameters: illumination angles, disk intercept, tangent altitude, etc  - Cube footprints (KML / GoogleEarth type?) + mosaicking in a GIS or Aladin  - Link to related geometry file  - Bulk download from VESPA (on PSA side? Should accept a VOTable with URLs)  - PDS3 reader/FITS converter (see APERICubes, currently a demo, & link to VESPA) Currently handles only M cubes, no geometry.  All these points to be studied during Europlanet H2020  

**On-line visualization of spectral cubes (demo)**  

- Select a test file in input, click "Process"  
(and wait a bit)  - Select channel 75(O2 emission)  Adjust contrast by clicking &dragging mouse over image  - Click location in image  
- corresponding spectrum will plotbelowYou can also select a box regionand move it on the image => average spectrum and boxstatistics  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/11_visualization_of_spectral_cubes.png" width="500" alt="11">  

- continue
- (with VOtools launched) Click "Register to SAMPHUB"  
- Click on a "Send… via SAMP" button  Images and cubes will display in Aladin  Spectra will display in TOPCAT, CASSIS, VOspec, Specview, etc  (*PDS3 data have been read & converted toFITS files in a local IDL or GDL session*)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/12_visualization_of_spectral_cubes_2.png" width="500" alt="12">  

**Spectral tools: TOPCAT**  

TOPCAT receives spectra from APERICubes, can overplot selections  - Use "Plane plot" & check parameters  - Click "New line form" to connect spectral channels  - Click "Add new plot" to overplot spectra  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/13_Spectral_tools_TOPCAT.png" width="500" alt="13">  

****
**Spectral tools: Specview**  

Specview receives spectra from APERICubes  Includes analysis functions  
- Click on "Measure" to perform continuum and band measurements  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/14_Spectral_tools_Specview.png" width="500" alt="14">  

- continue Click on "Line IDs" to query band linedatabases (from VAMDC)  
pick uprelevant ones  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/15_Spectral_tools_Specview_2.png" width="500" alt="15">  

****
**Spectral tools: CASSIS**  

CASSIS receives spectra from APERICubes, can overplot a selection of spectra and manipulate them  

- Click the "Tools" tab to combine spectraSpectra are resampled to a common wvl vectoron the fly  The "Species" tab accesses internal line databases(most of them related to the ISM)Includes LTE and RADEX modeling  

- Press "shift" to get info on mouse location"Alt"-drag to select a region (used in "Fit" tab)"Alt"-click to put markers  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/16_Spectral_tools_CASSIS.png" width="500" alt="16">  

****
**Spectral tools: VOSpec**  

VOSpec receives spectra from APERICubes, but doesnot recognize units  

- Select Wavelength in micron & Flux in W/m2/μm in input pannel  Then uncheck "Log" in axes & reselect "W/m2/μm" in flux menu  - Select "Line" to connect channels  
*Currently does not understand radiance ( W/m2/sr/μm)or reflectance - being discussed with ESA*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/17_Spectral_tools_VOSpec.png" width="500" alt="17">  

- continue Click "Simple Line Access" button  
Select area of interest  Select spectral databases in new window  Once loaded, lines are identified on mouse-over  - Uses an older protocol which retrieves all lines in agiven range => long and busy  Databases mostly related to the ISM (atoms)  

*Fitting functions available in "Operations" menu*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/18_Spectral_tools_VOSpec.png" width="500" alt="18">  

****
**VESPA to APERICubes connection (demo)**  
During the test phase:  
- Download library jsamp  http://dev.lsstcorp.org:8081/nexus/content/repositories/ccs-maven2/org/astrogrid/jsamp/1.3.5/  
- Launch from terminal with options:  java -jar jsamp-1.3.5.jar hub -web:norestrictmtypes &(this is currently required to handle the special file type)  
- Go to APERICubes page and register to the SAMP hub as previously  

- Go to VESPA page, select one VIRTIS file as previsouly- In menu "SAMP selection as" pick up "cubes PDS VIRTIS" (for the sake of the demo)- Validate dialogues (one in pop-up window + one in the browser)- Click "Process SAMP cube" in APERICubes page  - Proceed as previously  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/19.png" width="500" alt="19">  


****
**VO functions**  

- VESPA provides search functions to the PSA VVEx dataset- TOPCAT provides quick-look of table information- APERICubes will provide on-line visu & basic analysis functions to a single cubeWill also provide conversion from PDS3 to VO format (FITS) & link with other VOtools- Aladin, Specview, CASSIS, etc can display images / cubes / spectra from APERICubes  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/20_VO_functions.png" width="500" alt="20">  

**Search other datasets**   
VESPA sends queries to several data services in parallel. In the long term it will access:  
- other VEx instruments => Cross correlate all VEx measurements with a single query- derived data / results of various analyses from VIRTIS (outside PSA)- reference data, other Venus missions, coordinated ground-based observations, lab spectra, simulations, etc  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/21_Search_other_datasets.png" width="500" alt="21">  

**Possible extension to the Virtis VEx data service**  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/22_possible_extension.png" width="500" alt="22">  

****

<h2 id="Reference">Reference</h2>

Please refer this tutorial to PDF file uploaded on VESPA wiki and also the [website](http://vespa.obspm.fr)  

