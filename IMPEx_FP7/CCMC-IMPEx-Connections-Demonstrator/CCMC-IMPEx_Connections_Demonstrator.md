#CCMC-IMPEx Connections Demonstrator


[Authors](#Authors)  
[Change Log](#Log)  
[1. Introduction & Reference Document](#1)  
[2. CMCC](#2)  
&nbsp;&nbsp;[2.1 CCMC Services](#2.1)  
&nbsp;&nbsp;[2.2 Runs On Request Process](#2.2)  
[3. IMPEx-CCMC Prototype](#3)  
[4. BATS-R-US Model Description](#4)  
[5. CCMC Run Outputs Display in AMDA](#5)  
[6. CCMC Run Outputs Display in 3DView](#6)  
[7. IMPEx Resources for CCMC Simulation Runs](#7)  
[References](#References)



<h2 id="Authors">Authors</h2>

To be updated...

<h2 id="Log">Change Log</h2>
|Version|Name|Note|
|---|---|---|
|1|[Keyuan Yin](https://github.com/megadiesel705)|Some of figures are not in right form, hence update is needed once the original file is updated.|

<h2 id="1">1. Introduction & Reference Document</h2>

This demonstrator describes a prototype interface to CCMC, which provides access to simulation runs using the IMPEx protocol.  

Reference documents:  
[DR1] Impex Simulation Data Model  
[At this site](http://impex-fp7.oeaw.ac.at/xsd/doc/IMPEx-Sim-DM-1_0_0.pdf)  

<h2 id="2">CCMC</h2>


<h3 id="2.1">2.1. CCMC Services</h3>

The CCMC provides the scientific community with access to modern research models, tests and evaluation of models, supports Space Weather forecasters and space science education.  

<h3 id="2.2">2.2. Runs On Request Process</h3>

Runs on Request is a free service open to any scientist interested in running a space weather model that resides at the CCMC. It is possible to submit a model run request online.  

After the request has been processed by the CCMC web server, an execution request is generated and forwarded to CCMC's worker computers. The turn-around times for standard runs range from a day to 3-4 days. (Special request execution times depend on the complexity of the problem.)  

After the run execution has been completed, the web server runs the visualization software and publishes the run results on the CCMC website. At this time, an automatic email notification is sent to the requestor.  

CCMC-developed interactive Web-based visualization software allows the user to analyze simulation results and to perform scientific research without the need to download simulation results output. Outputs of all runs are [archived](http://ccmc.gsfc.nasa.gov/results/index.php) on the CCMC's data storage systems and are publicly accessible by means of these tools.  

Upon request, the CCMC provides users with raw simulation output data in a portable self-explanatory standard format. On user request (see [special request information](http://ccmc.gsfc.nasa.gov/requests/RunRequestInstructions.php#customized)) output data files for selected time steps or for the entire run can be deposited on CCMC's FTP server, from which the user can download data through anonymous FTP.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/1_Runs_On_Request_Process.png" width="500" alt="1">  

<h2 id="3">3. IMPEx-CCMC Prototype</h2>

The goal of the IMPEx-CCMC prototype is to render CCMC results more easily accessible to the wider community, by providing access, visualization and analysis via CDPP tools (AMDA and 3DView).  

Another goal is to check whether the IMPEx Data Model [DR1] used to describe simulations to be compared with observations is applicable to simulation databases that do not participate in IMPEx.    



The prototype is currently limited to one type of simulation, BATSRUS (MHD), and one run with data interpolated along the trajectory of several magnetospheric spacecraft. It focuses mainly on access from AMDA and 3DView.  


The CCMC provides interpolation (in the 3D box) of physical quantities (fields and plasma parameters) along spacecraft trajectory as time series that can be directly compared to in-situ observations. These time series are available in ASCII format.  
See for example (figure 1):  

[this site](http://ccmc.gsfc.nasa.gov/RoR_WWW/VMR/3539/Cluster-1/GSM_extract.txt)  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/2_3.1_f1.png" width="500" alt="2">  

A service developed by CDPP and FMI transforms these ASCII files into VOTable format. For the file above (see figure 2):  

[this site](http://apus.cesr.fr/AMDA_WS/php/rest/getVOTableFromASCII.php?
url=http://ccmc.gsfc.nasa.gov/RoR_WWW/VMR/3539/Cluster-1/GSM_extract.txt)  

To be compliant with the IMPEx protocol, simulation data must be described in a file called “Tree.xml”, which contains all the metadata needed by AMDA and 3DView to analyze or display the corresponding data.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/3_3.1_f2.png" width="500" alt="3">  
<center>figure 2</center>  


<h2 id="4">4. BATS-R-US Model Description</h2>

BATS-R-US, the Block-Adaptive-Tree-Solarwind-Roe-Upwind-Scheme, was developed by the Computational Magnetohydrodynamics (MHD) Group at the University of Michigan, now Center for Space Environment Modeling (CSEM). It was designed using the Message Passing Interface (MPI) and the Fortran90 standard and executes on a massively parallel computer system.  

The BATS-R-US code solves 3D MHD equations in finite volume form using numerical methods related to Roe's Approximate Riemann Solver. BATSRUS uses an adaptive grid composed of rectangular blocks arranged in varying degrees of spatial refinement levels. The magnetospheric MHD part is attached to an ionospheric potential solver that provides electric potentials and conductance in the ionosphere from magnetospheric field-aligned currents.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/4_.png" width="500" alt="4">  


**Model Input**  

Inputs to BATS-R_US are the solar wind plasma (density, velocity, V_x, V_y, V_z, temperature) and magnetic field (B_x, B_y, B_z) measurement, transformed into GSM coordinates and propagated from the solar wind monitoring satellite's position propagated to the sunward boundary of the simulation domain. The Earth's magnetic field is approximated by a dipole with updated axis orientation and co-rotating inner magnetospheric plasma or with a fixed orientation during the entire simulation run. The orientation angle is updated according to the time simulated or a fixed axis position can be specified independently from the time interval that is simulated.  

**Model Output**  

Outputs include the magnetospheric plasma parameters (atomic mass unit density N, pressure P, velocity V_x, V_y, V_z, magnetic field B_x, B_y, B_z, electric currents, J_x, J_y, J_z) and ionospheric parameters (electric potential PHI, and Hall and Pedersen conductances Sigma_H, Sigma_P).


<h2 id="5">5. CCMC Run Outputs Display in AMDA</h2>

We see in figure 3 how simulation data can be used in AMDA. Data can be selected in the workspace explorer of AMDA and plotted. We can see in the figure the plot of a BATSRUS run along the trajectory of Cluster-1: Magnetic Field, Current, Velocity, Density, Pressure and Position.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/5_figure_3.png" width="500" alt="5" style="border-width:25px;border-color:red">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/6_figure_4.png" width="500" alt="6">  

<h2 id="6">6. CCMC Run Outputs Display in 3DView</h2>  

Simulation data can also be displayed in 3DView along spacecraft trajectories and compared with observations. First of all, the user selects a time period and a spacecraft in the selection dialog box.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/7_figure_5.png" width="500" alt="7">  

To select simulation data from CCMC, the user must open the IMPEx Tree (Science Menu). Observational data can be selected as well, under the “observational data” folder.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/8_figure_6.png" width="500" alt="8">  

The selected data are displayed in the 3D scene, with a control box allowing to change, for vectors, the arrow width and length, the sample density.  


<h2 id="7">7. IMPEx Resources for CCMC Simulation Runs</h2>

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/9_.png" width="500" alt="9">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/10_.png" width="500" alt="10">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/11_.png" width="500" alt="11">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/12_.png" width="500" alt="12">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/13_.png" width="500" alt="13">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/CCMC-IMPEx-Connections-Demonstrator/img/14_.png" width="500" alt="14">  

<h2 id="References">References</h2>  

Please refer this tutorial to the original PDF on [this site](https://sites.google.com/site/impexfp7/)











