#IMPEx Tutorial for AMDA & 3DView

[Authors](#Authors)  
[Change Log](#log)  
[1. Introduction & Reference Document](#1)  
[2. Goal of the Tutorial](#2)  
[3. Conditions of the Use Case](#3)  
[4. Display Observational Data](#4)  
[5. Comparing with SINP Magnetic Field Model](#5)  
[6. Comparing with GUMICS MHD Model](#6)  
[7. Comparing with CCMC Simulation Run](#7)  
[References](#References)
  



<h2 id="Authors">Authors</h2>

To be updated...

<h2 id="log">Change Log</h2>

|  Version | Name | Note|
|----------|------|-----|
|1|[Keyuan Yin](https://github.com/megadiesel705)|First Converted from [this site](https://sites.google.com/site/impexfp7/home/impex-demonstrator-for-amda-3dview)|  

<h2 id="1">1. Introduction & Reference Document</h2>

This demonstrator contains a tutorial covering several key features of IMPEx. It enables users to become familiar with the comparison of data coming from simulations and observations in AMDA and 3DView.  

**Reference documents**:

[DR1] [IMPEx Simulation Data Model](http://impex-fp7.oeaw.ac.at/xsd/doc/IMPEx-Sim-DM-1_0_0.pdf)  

<h2 id="2">2. Goal of the Tutorial</h2>

The goal of this tutorial is to demonstrate the access to data coming from observations and simulations with AMDA and 3DView. Users will be able to visualize data related to the Earth magnetosphere, coming from several origins:  

- Observations from AMDA database  
- SINP paraboloid model for the magnetic field  
- FMI MHD model (GUMICS code)  
- BATSRUS (MHD) run at CCMC  

<h2 id="3">3. Conditions of the Use Case</h2>

Analysing Solar Wind conditions in AMDA with ACE Data to search for Quiet fast solar wind condition, we choose the following time interval, which will be used along the tutorial.  

Time Start: 2008/10/02T03:00:00  
Time Stop: 2008/10/03T03:00:00  

<h2 id="4">4. Display Observational Data</h2>

Step 1: Login in AMDA  
Step 2: Choose “Plot Manager”  
Step 3: Choose “Local Data” in the Workspace Explorer  
Step 4: Choose “Cluster 1” then “magnetic field” then  “ion data” then “ephemeris”  
(Cluster 1 is in the night side of the magnetosphere)
Step 5: Drag and Drop parameters to be displayed to the “Plot Manager”  
Step 6: Select the time interval  
Time Start: 2008/10/02T03:00:00  
Time Stop: 2008/10/03T03:00:00  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/1_.png" width="500" alt="1">

Step 7: Generate the plot. It should look like the figure below:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/2_.png" width="500" alt="2">  

<h2 id="5">5. Comparing with SINP Magnetic Field Model</h2>  

Step 1:  In the workspace of AMDA, select Remote Data (Simulations)  
Step 2: Choose Models@SINP  
Step 3: Choose Earth model (computation on the fly)  
(Input Solar Wind data + indices are automatically retrieved from AMDA database to serve the computation). This is the paraboloid magnetic field model A2000  
Step 4: select magnetic field vector/Bx, drag and drop to panel 1  
Step 5: select magnetic field vector/By, drag and drop to panel 2  
Step 6: select magnetic field vector/Bz, drag and drop to panel 3  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/3_.png" width="500" alt="3">  

Step 6: click on “Plot” to display the following figure  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/4_.png" width="500" alt="4">  

Step 7: Now select observations.  
In the workspace, select “Parameters/Local Data  
Step 8: select CLUSTER1/FGM/fgm_spin/b_gsm  
Step 9: drag and drop bx_gsm to panel 4  
Step 10: drag and drop by_gsm to panel 5  
Step 11: drag and drop bz_gsm to panel 6  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/5_.png" width="500" alt="5">  

Step 12: click on “Plot” to display the following figure. Now, you can compare observations to simulations.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/6_.png" width="500" alt="6">  

<h2 id="6">6. Comparing with GUMICS MHD Model</h2>

Step 1: log in AMDA  
Step 2: select “Parameters/LocalData/OMNI” in the workspace  
Step 3: select OMNI/imf/sw/indices/one_hour/imf_gse  
Step 4: select the following time interval  
			Time start: 2013-02-06T00:00:00  
			Time stop: 2013-02-07T00:00:00  
			
<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/7_.png" width="500" alt="7">  

Step 4: click on “Plot”. You have now the following visual representation of the solar wind conditions. We choose the conditions that will be applied to search for GUMICS runs matching these conditions.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/8_.png" width="500" alt="8">  

Step 5: We select from the figure above the Density and Temperature at 00:00  
		Density= 10 cm-3  
		Temperature= 3.7 104 K  
Step 6: In the workspace of AMDA, click on MODELS@FMI_GUMICS, then right click on “impex://FMI/HWA/GUMICS”  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/9_.png" width="200" alt="9">  

Step 7: This action opens a new dialog box in which you can enter the Solar Wind parameters at step 5, and a Runcount of 2.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/10_.png" width="500" alt="10">  

Step 8: click on the “Get Runs” to search for runs corresponding to the criteria.  

Step 9: From the list of matching runs displayed at the bottom of the window, select GUMICS_Earth_run_000157  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/11_.png" width="500" alt="11">  

Step 10: Click on the “Save Runs” button to move the selected runs to the workspace of AMDA under MODELS@GUMICS. Parameters of these runs may now be used like the other parameters of the workspace.  

Step 11: In the Plot Manager, remove “omni_sw_n” from Panel1 and “omni_sw_t” from Panel2  

Step 12: In the workspace, select GUMICS_Earth_run_000157/Mag/Bx,By,Bz then drag and drop the selected parameters to the Plot Manager. Don’t forget to select the spacecraft, CLUSTER1.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/12_.png" width="500" alt="12">  

Step 13: Click on the “Plot” button. The following figure must be displayed  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/13_.png" width="500" alt="13">  

Step 14: click on “Remove” to remove the selected runs from the workspace of AMDA  

<h2 id="7">7. Comparing with CCMC Simulation Run</h2>

In the first part of this paragraph, we will display data from CCMC  

Step 1: In the workspace of AMDA, select “MODELS@CDPP”  
Step 2: select “CCMC/BATSRUS”  
Step 3: select the run: “Vincent_Genot_012610_1”  
Step 4: select the spacecraft: “CCMC/BATSRUS along CLUSTER-1”  
Step 5: select “Position Z”, drag and drop it to panel 1 of the plot manager  
Step 6: select “Velocity Uz”, drag and drop it to panel 2 of the plot manager  
Step 7: select “MagneticField Bz”, drag and drop it to panel 3 of the plot manager  
Step 8: select “Current Jz”, drag and drop it to panel 4 of the plot manager  
Step 9: select “Density”, drag and drop it to panel 5 of the plot manager  
Step 10: select “Pressure”, drag and drop it to panel 6 of the plot manager  
Step 11: select the following time interval  
			Time Start: 2008-10-02T04:00:00  
			Time Stop: 2008-10-03T04:00:00  
			
<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/14_.png" width="500" alt="14">  

Step 12: click on “Plot” to display the following figure  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/15_.png" width="500" alt="15">  

In the second part of this paragraph, we compare the magnetic field coming from observations along the trajectory of Cluster-1  

Step 12: remove the contents of all panels in the plot manager  
Step 13: from the same run as above, select “Magnetic Field Bx”, drag and drop it to panel 1  
Step 14: select “Magnetic Field By”, drag and drop it to panel 2  
Step 15: select “Magnetic Field Bz”, drag and drop it to panel 3  
Step 16: select local data/CLUSTER1/FGM/fgm_spin  
Step 17: select “b_gsm/bx_gsm”, drag and drop it to panel 1  
Step 18: select “b_gsm/by_gsm”, drag and drop it to panel 2  
Step 19: select “b_gsm/bz_gsm”, drag and drop it to panel 3  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/16_.png" width="500" alt="16">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/17_.png" width="500" alt="17">  

Step 20: click on “plot” to display the following figure  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/IMPEx-Tutorial-for-AMDA-3DView/img/18_.png" width="500" alt="18">  

<h2 id="References">References</h2>

Please refer this tutorial to the [original site](https://sites.google.com/site/impexfp7/home/impex-demonstrator-for-amda-3dview)  







