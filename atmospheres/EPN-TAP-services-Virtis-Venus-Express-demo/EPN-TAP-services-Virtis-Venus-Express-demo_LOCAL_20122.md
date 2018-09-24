#Virtis / Venus Express demo

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

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/1_.png" width="500" alt"1">  

**Service results**  
- In line VVEx, click the "Display results" icon to get result list  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/2_.png" alt="2">  

**Query results**

Result is a list of files matching the query  

- Hover the mouse to


**Displaying footprints**   


- "GeoJSON" will open Mizar in a

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/4_Display_footprint.png" width="500" alt="4">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/5_display_footprint_2.png" width="500" alt="5">  


**Launch VO tools**

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/6_Analyzing_results.png" width="500" alt="6">  

**Analysing dataset**  

Click "All Metadata" /

In TOPCAT,

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/7_Analyzing_results_2.png" width="500" alt="7">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/8_Analyzing_.png" width="500" alt="8">  

- Click Sky-plotting icon
Select parameters c1min & c2min

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/9_Skyplot_icon.png" width="500" alt="9">

- Click plane-plotting icon  
Select parameters C1min & C2min => Cylindrical map  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/8_plane-plotting.png" width="500" alt="10">  

- continue: Click plane-plotting icon  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/9_plane-plotting_2.png" width="500" alt="11">  

- In plane plot, click SizeXY option  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/10_SizeXY_option.png" width="500" alt="12">  

**Analysing cubes**  

Select one line &


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/13_analyzing_cubes.png" width="500" alt="13">  


**Visualization of spectral cubes**  

Validate all dialogues

(with VOtools launched)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/14_Visualization.png" width="500" alt="14">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/15_Visualization.png" width="500" alt="15">  




**Future developments to be implemented:**  


**Spectral tools: TOPCAT**  

TOPCAT receives spectra from APERICubes, can overplot selections  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/13_Spectral_tools_TOPCAT.png" width="500" alt="16">  

****
**Spectral tools: Specview**  

Specview receives spectra from APERICubes  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/14_Spectral_tools_Specview.png" width="500" alt="17">  

- continue Click on "Line IDs" to query band line
pick uprelevant ones  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/15_Spectral_tools_Specview_2.png" width="500" alt="18">  

****
**Spectral tools: CASSIS**  

CASSIS receives spectra from APERICubes, can overplot a selection of spectra and manipulate them  

- Click the "Tools" tab to combine spectra

- Press "shift" to get info on mouse location

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/16_Spectral_tools_CASSIS.png" width="500" alt="19">  

****
**Spectral tools: VOSpec**  

VOSpec receives spectra from APERICubes, but does

- Select Wavelength in micron & Flux in W/m2/μm in input pannel  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/17_Spectral_tools_VOSpec.png" width="500" alt="20">  

- continue Click "Simple Line Access" button  
Select area of interest  

*Fitting functions available in "Operations" menu*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/18_Spectral_tools_VOSpec.png" width="500" alt="21">  




**Future developments to be implemented:**  


**VESPA to APERICubes connection (demo)**  
During the test phase:  




- Go to VESPA page, select one VIRTIS file as previsouly

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/19.png" width="500" alt="22">  


**Powerful searches on location**  

In "Direct Query" tab  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img_updated_1/23_Search.png" width="500" alt="23">

**VO functions**  

- VESPA provides search functions to the PSA VVEx dataset

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/20_VO_functions.png" width="500" alt="24">  

**Search other datasets**   
VESPA sends queries to several data services in parallel. In the long term it will access:  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/21_Search_other_datasets.png" width="500" alt="25">  



**Possible extension to the Virtis VEx data service**  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/EPN-TAP-services-Virtis-Venus-Express-demo/img/22_possible_extension.png" width="500" alt="22">  

****


<h2 id="Reference">Reference</h2>


Please refer this tutorial to PDF file uploaded on VESPA wiki and also the [website](http://vespa.obspm.fr)  
