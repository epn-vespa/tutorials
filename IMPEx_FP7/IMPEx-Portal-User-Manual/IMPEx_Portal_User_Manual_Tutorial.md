#IMPEx Portal User Manual

[Authors](#Authors)  
[Change Log](#log)  
[1. Introduction](#1)  
[2. The Portal Map](#2)  
[3. The IMPEx Configuration Menu](#3)  
[4. The IMPEx Messaging API](#4)  
[5. Support and Tool Docs Menus](#5)  
[6. IMPEx Portal Use Case: Magnetic Field Simulation on Mars Express Orbit](#6)  
[References](#References)  

<h2 id="Authors">Authors</h2>

To be updated...

<h2 id="log">Change Log</h2>

| Version | Author | Notes |
| ------------- |:-------------:| -----: |
| 1             | [Keyuan Yin](https://github.com/megadiesel705)| First Converted |

<h2 id="1">1. Introduction</h2>

The IMPEx Portal, which can be found at [this site](http://impex-portal.oeaw.ac.at/), combines all databases, services and tools, which are currently involved in the [EU-Project IMPEx FP7](http://impex-fp7.oeaw.ac.at/). It provides access to simulation runs as well as observational data of magnetic and plasma environments of several planets, moons and comets in the solar system via an easy to understand web-based environment. Within the database, tools and service sections of the main site of the portal (the so-called Map) one can browse through the resources and select a specific data set, which will then be stored in My Data for further processing in the service-part of the map. Service results can be downloaded as well as sent to one of the IMPEx-Tools via SAMP.
Besides the Map the top menu of the portal also provides access to the IMPEx configuration files, the IMPEx messaging API, as well as to the IMPEx support. The Tool Docs document, a quick guide to all IMPEx visualization tools and Simulation and Modeling Databases (SMDBs) can additionally be found in the top menu.  

<h2 id="2">2. The Portal Map</h2>

Figure 1 provides an overview of the main page of the Portal Map. All features available on the Map are briefly described below.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/1_Figure_1.png" width="500" alt="1">  

*Figure 1: Mainpage of the Map of the IMPEx Portal: On this page one can access all databases, services and tools of the EU-Project IMPEx FP7. Tree selections and services results are stored in the My Data section. Via the Filter on the top of the page one can narrow down databases and services by the availability of specific targets. INIT SAMP provides the possibility to connect to a SAMP hub for the delegation of service results to a wide range of web-based applications.*  

**Databases**  

Within the different IMPEx-databases, one can browse the trees of all service providers to get an overview of all available data and its metadata. Suitable tree elements can be selected and will then be stored automatically in My Data for their further usage in the Data Access area. Please be aware that only the selections of the active database will be visible in the respective Databases and Data Access dialogs of the IMPEx Portal. Figure 2 gives an example of a Database dialog, i.e. the SINP paraboloid model database.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/2_Figure_2.png" width="500" alt="2">  

*Figure 2: The SINP paraboloid model database for Mercury, Earth, Jupiter, and Saturn. Please be aware that for this screenshot no tree selections were performed.*  

**Services**  

Within this area you can browse through the methods (web services) of all IMPEx service providers. Tree selections, which were chosen in Databases and stored in My Data, as well as uploaded VOTables will be visible in these dialogs, and can then easily be applied as far as they are applicable for the respective methods. Obtained results can then be saved for further usage. Please be aware that only the selections and results of the respective database will be visible in the according Databases and Data Access dialogs of the IMPEx Portal. Figure 3 gives an example of a Services dialog, i.e. the SINP paraboloid data access resource.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/3_Figure_3.png" width="500" alt="3">  

*Figure 3: The SINP paraboloid data access resource for Mercury, Earth, Jupiter, and Saturn. The method chosen as an example for this sreenshot is calculateDataPointValueSpacecraft, which calculates the magnetic field on a given spacecraft trajectory (i.e. Cluster 1 for this particular example). Please be aware that for this screenshot no tree selections were performed.*  

**Tools**  

The Tools area of the IMPEx Portal provides links to all tools (i.e. AMDA, 3DView and CLWeb) for data analysis, which are connected to the IMPEx services. Via connecting to a SAMP Hub you can send selected service results to the respective tools for further analysis. A quick overview guide on all of these tools, as well as on the simulation databases can be found at [this site](http://impex-fp7.oeaw.ac.at/fileadmin/user_upload/pdf/IMPExToolsandtheirUsability.pdf). Figure 4 gives an example of one of the tools within the IMPEx environment. By clicking on the red CLWeb button, the user is directly redirected to the official website of CLWeb.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/4_Figure_4.png" width="500" alt="4">  

*Figure 4: CLWeb access via the IMPEx Portal.*  

**My Data**  

My Data is the reservoir for all stored tree selections and services results, which can easily be managed in this area. Moreover customized VOTables can be uploaded via My Data for further usage in the IMPEx Portal. Please be aware that VOTable files are saved for only 24 hours! Results and selections on the other hand are stored on the client-side and will be available with no elapse time. 

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/5_Figure_5.png" width="500" alt="5">  

*Figure 5 shows a screenshot of an empty My Data dialog.*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/5_Figure_5_2.png" width="500" alt="5_2">  

*Figure 5: The My Data dialog. Please be aware that for this screenshot no tree selections were performed.*  

**Filter Dialog**  

This dialog can be used to filter IMPEx databases and services via customized criteria. Those who do not fit the criteria will be deactivated, i.e. only relevant resources will then be visible. Figure 6 shows the Filter dialog.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/6_Figure_6.png" width="500" alt="6">  
*Figure 6: The Filter dialog.*  

**INIT SAMP**  

SAMP is a webhub providing the possibility of interaction between different web-based applications. Via SAMP one can delegate respective data from the IMPEx-Portal to e.g. AMDA or 3DView, but also to tools outside of the IMPEx environment like Topcat or Aladin, as far as they support SAMP. If a SAMP hub is already installed and started at the local device, one has to click on Register to connect the IMPEx-Portal to the hub. If no hub is available at the local device, a webhub can be downloaded via clicking on Download SAMP Hub.  Within the respective databases one can send data via Delegate directly to the desired tool. Please be aware that the SAMP hub also has to be activated at the respective tool prior to the delegation of the data. Figure 7 shows the INIT SAMP dialog.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/7_Figure_7.png" width="200" alt="7">  
  
*Figure 7: The INIT SAMP dialog.*  


<h2 id="3">3. The IMPEx Configuration Menu</h2>

The *IMPEx config* can be found in the top menu of the IMPEx Portal and provides all method wsdl-files and trees of all SMDBS (i.e. FMI-HYBRID, FMI-GUMICS, LATMOS, SINP), as well as of AMDA. Further information on the latest updates and the availability of the tree files are displayed in this part of the portal. Figure 8 provides an overview of the main site of the IMPEx Configuration Menu.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/8_Figure_8.png" width="500" alt="8">  

*Figure 8: The IMPEx Configuration Menu provides links to method wsdl-files and trees of the databases of the IMPEx environment.*  

<h2 id="4">4. The IMPEx Messaging API</h2>

The IMPEx Messaging API provides access to  

- operations for extracting the IMPEx configuration files,  
- operations for using the IMPEx registry services, and  
- operations for using the IMPEx data access services,  

as can be seen in Figure 9. A brief overview of the three subsections of the API can be found below.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/9_Figure_9.png" width="500" alt="9">  

*Figure 9: Main page of the threepart IMPEx Messaging API.*  

**config: operations for extracting the IMPEx configuration files**  
Within this subsection (see Figure 10) one can request the IMPEx configuration file, which is also available at http://impex-portal.oeaw.ac.at/config?fmt=xml.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/10_Figure_10.png" width="500" alt="10">  
*Figure 10: Via this subsection one can retrieve the IMPEx configuration file in xml or json file format.*  

**registry: operations for using the IMPEx registry services**  

This subsection (*see Figure 11*) provides several operations to extract specific parts out of the IMPEx registry. The IMPEx registry is a consolidated tree containing all individual trees of the IMPEx SMDBs and AMDA (i.e. all database entries in the config, for which their *portal attribute* is set to *true* can be queried within the IMPEx registry). The registry subsection may in particular be interesting for extracting Resource IDs, instrument names or other specific input values for all of the different methods and services provided on the IMPEx portal. Via *get /registry/instrument* one can e.g. display all instruments available in the observational data base of AMDA. Moreover one can filter all SMDBs and AMDA by available regions within their databases via get /filter/region, or can extract the whole tree of every database directly via *get /registry*.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/11_Figure_11.png" width="500" alt="11">  
*Figure 11: Overview of available registry operations within the IMPEx Messaging API.*  

Figure 12 gives an example of get /registry/instrument, displaying part of the description of the magnetic field instrument of the spacecraft ACE, as it can be found in the AMDA tree.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/12_Figure_12.png" width="500" alt="12">  
*Figure 12: Example of an instrument description – ACE-MAG – which one retrieves by using get /registry/instrument.*  

methods: operations for using the IMPEx data access service
Via the methods subsection one can test all available methods of the IMPEx environment. It provides **REST based access to the entire IMPEx protocol**. Figure 13 provides an overview of this subsection displaying all of these methods.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/13_Figure_13.png" width="500" alt="13">  
*Figure 13: The methods-subsection of the IMPEx Messaging API. All available methods of the IMPEx-SMDBs as well as two methods provided by AMDA can be tested within this subsection.*  

Figure 14 provides an example of get /methods/AMDA/getOrbits. The method getOrbits extracts individual orbits of all different spacecraft, which are available in the observational database of AMDA for a specific timerange and coordinate system. The given example extracts the orbits of Mars Express (MEX) from March 15, 2007 to March 16, 2007. The respective coordinate system is Mars Solar Orbital (MSO) and the trajectory will be extracted in Martian Radii (Rm). The accompanying datafileURL can be found in the response body of the method as can be seen in the Figure.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/14_Figure_14_1.png" width="500" alt="14_1">  
<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/14_Figure_14_2.png" width="500" alt="14_2">  

*Figure 14: Example of get /methods/AMDA/getOrbits. Within the Response Body of the method, one can find the dataFileUrl, which redirects the user to a VOTable of the respective orbits of Mars Express around Mars from March 15-16, 2014, in MSO coordinate system and in Rm.*  

<h2 id="5">5. Support and Tool Docs Menus</h2>

These sections provide specific user support. The submenu Support (see Figure 15) redirects to the IMPEx Helpdesk, which cannot only be used for the portal, but also for all different SMDBs and tools of the IMPEx environment (i.e. IMPEx Portal, IMPEx Website, 3DView, AMDA, CLWeb, SINP, FMI HWA, and LATHYS). We strongly urge every user of the IMPEx environment, who has any problems or questions, to use this support form, so that the IMPEx team can effectively enhance the system.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/15_Figure_15.png" width="500" alt="15">  

*Figure 15: The IMPEx Hepldesk*  

The Tool Docs submenu redirects to a Quick Guide to IMPEx Tools, which can also be found at http://impex-fp7.oeaw.ac.at/fileadmin/user_upload/pdf/IMPExToolsandtheirUsability.pdf. This short document is the perfect starting point for every user, who is new to the IMPEx environment. It gives a short and precise intro to all available SMDBs and tools, with the focus on “*which tool and which SMDB fit best for what you are currently looking for*”.  

<h2 id="6">6. IMPEx Portal Use Case: Magnetic Field Simulation on Mars Express Orbit</h2>  

This particular use case should give an insight into the IMPEx Portal Map and on how to delegate service results to another tool via SAMP. FMI-HYBRID simulation data of the Martian magnetic field environment will be selected and further projected onto the trajectory of Mars Express. The result will then be sent via SAMP to AMDA for further visualization. The following provides a detailed step-by-step tutorial, so that anyone can simply understand and reconstruct this use case, and hence the functionality of the IMPEx Portal in particular, and the IMPEx environment in general.  

**Step 1 – Filter by Regions**  

Simply go to the IMPEx Portal website - http://impex-portal.oeaw.ac.at/ - and you will directly find yourself on the IMPEx Portal Map, which is the starting point for this tutorial. Since there are several databases, of which not everyone has Martian data available you can filter the resources via the Filter button in the upper left of the map. By clicking on Filter a list of regions appears, from which we will select Mars, as displayed in Figure 16.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/16_Figure_16.png" width="500" alt="16">  
*Figure 16: Step 1 – Selecting the right filter for Martian data products.*  

After selection of Mars and via clicking on the OK-button all resources and services will be filtered with regard to the availability of Martian data products. Figure 17 shows the result of this procedure. As one can see, only FMI-HYBRID, LATMOS, and AMDA can offer datasets of the Martian environments.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/17_Figure_17.png" width="500" alt="17">  
*Figure 17: Step 1 – The Portal Map as it appears after the selection of Mars within the Filter.*  

**Step 2 – Tree Selection**  

We will now choose the resource of FMI-HYBRID simulations by clicking on the respective blue square. A dialog pops up, in which you will find a simulation model on the Martian environment. By selecting it, a number of different simulation runs will appear, as can be seen in Figure 18. Mouse over a respective run will display further details of the run, and as Figure 19 illustrates, clicking on one of the runs - it’s the second one in our particular use case – four further numerical outputs of different parameters will appear. The fourth of this output contains the magnetic field data of the Martian environment as simulated by the FMI-HYB model (For further insights on this model one may take a look at the comprehensive Hybrid Models Demonstrators on the IMPEx tutorial site: https://sites.google.com/site/impexfp7/home/hmm). That is exactly what we will need.  

After clicking on the magnetic field numerical output, a detailed description can be found at the bottom right part of the FMI-HYBRID simulations window. By clicking on Select the tree selection will be saved in My Data and can be applied on the services-part of the Portal Map. Figure 20 shows a detailed description of the magnetic field data, as calculated by the FMI simulation model.  

After the tree selection, paths will be displayed within the Portal Map, illustrating the saving of the selection in My Data, as well as the service in which the respective selection can be applied (see Figure 21 and Figure 22).  

A specific tree selection can be deleted within My Data, via clicking on the Delete button of the respective selection. Clear Selection (see Figure 22) on the other hand will delete all tree selections within My Data.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/18_Figure_18.png" width="500" alt="18">  
*Figure 18: Step 2 – The FMI-Hybrid Simulations database as filtered by Martian datasets (as of November 2014).*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/19_Figure_19.png" width="500" alt="19">  
*Figure 19: Step 2 – The selection of the simulated magnetic field data.*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/20_Figure_20_1.png" width="500" alt="20_1">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/20_Figure_20_2.png" width="500" alt="20_2">  
*Figure 20: Step 2 – Detailed description of the numerical output.*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/21_Figure_21.png" width="500" alt="21">  
*Figure 21: Step 3 – Illustration via paths.*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/22_Figure_22.png" width="500" alt="22">  
*Figure 22: Step 3 - The tree selection in My Data.*  

**Step 3 – Application to Specific Services**  
As illustrated by the paths in the portal, the tree selection can now be applied to specific services, i.e. methods within the FMI-HYBRID Data Access. For this tutorial we will apply the selection of the simulated magnetic field environment of Mars to the method getDataPointValueSpacecraft. This method interpolates the simulated magnetic field values on a given spacecraft trajectory. As can be seen in Figure 23 we can select getDataPointValueSpacecraft at the upper left drop-down menu of the FMI-HYBRID Data Access window.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/23_Figure_23.png" width="500" alt="23">  
*Figure 23: Step 3 - The FMI-HYBRID Data Access window. In the upper left side one can see the drop-down menu for all available FMI methods. We will choose getDataPointValueSpacecraft.*  

In the bottom left side of the window we will find all *Tree Selections* we made so far - i.e. only the numerical output for the simulation magnetic field data of the Martian environment (as chosen in Step 2). By clicking on the NumericalOutput, a description of the selection will appear, as well as an Apply and Delete button. Via Apply, the respective Resource ID will be applied to getDataPointValueSpacecraft. We also have to choose the appropriate spacecraft for our particular case, which is Mars Express (MEX). As time range we will choose 2010-08-02T02:00:00 as Start Time and 2010-08-02T02:00:00 as Stop Time. Further changes on the inputs of the method may be performed by the user. One could for example change the timeframe or the Output Filetype of the interpolation. Figure 24 illustrates the input form with the appropriate values for this tutorial. Please be aware that different inputs may also change the output and hence potential visualizations of this dataset.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/24_Figure_24.png" width="500" alt="24">  
*Figure 24: Step 3 – The input values for the input form of getDataPointValueSpacecraft, as needed for this tutorial.*  

To start the request you will simply have to click on Request Data. After processing, the service result will be added to My Data and will additionally also be visible in the FMI-HYBRID Data Access.  

**Step 4 – Delegation via SAMP**  

The service result can now be sent to visualization tools like AMDA or 3DView via the webhub SAMP. For that reason we have to start the SAMP hub at the upper right of the IMPEx Portal Map. By clicking on INIT SAMP a small window opens, including two options: Register and Download SAMP Hub. If a hub is already available, it has to be started on the local device first, if there is no hub available so far, it can be downloaded via Download SAMP Hub and has to be started afterwards. Register will then open the SAMP control panel, asking to allow the connection between portal and hub. By clicking on yes, the portal will be connected to SAMP. Figure 25 illustrates the INIT SAMP window, as well as the SAMP control panel.  

After the connection is established, the service result can be sent to any tool, which is also connected to SAMP. As Figure 26 shows, the INIT SAMP window displays all currently available tools. In this example 3DView, as well as AMDA are also connected to the same hub.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/25_Figure_25.png" width="500" alt="25">  
*Figure 25: Step 4 – The INIT SAMP window, as well as the SAMP control panel: Clicking on Yes (i.e. “Ja” in the German version of the control panel as illustrated in this figure) connects the portal to SAMP.*  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/26_Figure_26.png" width="200" alt="26">  
*Figure 26: Step 4 – All connected clients are displayed within the INIT SAMP window.*  

By clicking on *Delegate to within the FMI-HYBRID Data Access* a drop down menu appears with all connected clients in it (see Figure 27). Selecting AMDA will send the service result to exactly this tool.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/27_Figure_27.png" width="500" alt="27">  

**Step 5 – Parameter Definition in AMDA**  

We will now switch to AMDA, in which a window should have already been popped up, asking for the definition of the incoming parameter (see Figure 28). This pop-up window refers to the service result - i.e. the simulated magnetic field, which was interpolated on the trajectory of MEX – which we sent via SAMP to AMDA. Within the Define Parameter window, we can see all parameters, which are in the respective VOTable of the service result, i.e. the trajectory of MEX (x,y, and z values), the magnetic field components Bx, By, Bz, as well the total magnetic field Btot. We will choose Btot and save it accordingly with a sampling of 60 seconds.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/28_Figure_28.png" width="500" alt="28">  
*Figure 28: Step 5 – Definition of the incoming parameter in AMDA.*  

**Step 6 – Plotting Data in AMDA**  

We will now open the Plot Manager of AMDA and drag the trajectory of MEX (i.e. MEX/ephemeris/orbit/xyz_mso), as well as our defined parameter Btot into the Plot Manager. The Start Time will be set to 2010/08/01 22:00:00 and the Stop Time to 2010/08/03/02:00:00. This assures that the time range of Btot, as already defined in the IMPEx Portal (see Step 3), lies within the time range of the plot. This step is illustrated in Figure 29.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/29_Figure_29.png" width="500" alt="29">  
*Figure 29: Step 6 - The Plot Manager in AMDA.*  

By clicking on Plot, the defined parameter Btot will be plotted together with the trajectory of MEX, as can be seen in ….  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/30_Figure_30.png" width="500" alt="30">  
*Figure 30: Step 6 – Trajectory of MEX and the interpolated magnetic field  Btot as plotted via AMDA.*  

**Step 7 – Comparison of Parameters**  
We can now also compare the imported parameter Btot, as we created and sent it via the IMPEx Portal to AMDA, with the same simulated parameter of the same FMI-Hybrid simulation run, as it can directly be retrieved in AMDA. Figure 31 illustrates that both parameters look exactly the same.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Portal-User-Manual/img/31_Figure_31.png" width="500" alt="31">  
*Figure 31: Step 7 - Comparison of the Btot as created via the Portal with the same Btot, as created directly in AMDA.*


<h2 id="References">References</h2>

Please refer this tutorial on [the original site](https://sites.google.com/site/impexfp7/home/impex-portal-user-manual).