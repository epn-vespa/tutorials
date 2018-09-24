## Mars Global Surveyor plasma data compared with models

[Authors](#Authors)

[Change Log](#Log)

[Goals](#Goals)

[Steps](#Steps)

[References](#References)

## Authors

R. Modolo 1), S. Hess 1), B. Cecconi 2), V. G&eacute;not 3), and the IMPEx team  

1)  LATMOS,Paris,France  
2)  LESIA,Meudon,France  
3)  IRAP-CDPP,Toulouse,France  
[IMPEx team](http://impex-fp7.oeaw.ac.at)  

## Change Log

Version : 1

Name : [Keyuan Yin](https://github.com/megadiesel705)

Note : First converted from [original site](http://typhon.obspm.fr/VESPA-tutorials/docs/Tuto-MGS-LATHYS.pdf)

## Goals

* Hands on LATMOS simula3on database and Visualiza3on tools (AMDA, 3Dview, TopCat)
* Comparison between MGS observa9ons and Hybrid simula9on results


## Steps

[Presentation of LatHyS](hbp://impex.latmos.ipsl.fr)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/1_.png" width="500" alt="1">  

Choosing one Martian simulation :  
LatHyS catalog propose the main characteristic of the simulation - The ResourceID (Name) :  

LatHyS_Mars-18_01_13@...  

- IMF values : (-1.63, 2.52, 0.0) nT  
- Sub Solar Longitude : 0 degree (main crustal field on the nightside)   

Searching if MGS data have similar IMF values ....   

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/2_.png" width="500" alt="2">  

Comparison between MGS observations and Hybrid simulation results using [AMDA](http://amda.cdpp.eu)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/3_.png" width="500" alt="3">  

Use Data Mining tool (Magnifying glass)  
Construct a data Mining condi1on by dragging and dropping resources of the workspace explorer (MGS bx_mso => data mining condi1ons)  
The condi1on mark out the simula1on IMF value : -2<Bx<-1 , 2<By<3, -1<Bz<1  
Specify a sampling 1me (averaging over 300s), the name of the request and the Time interval Start Time : 1998/07/05 => Stop Time : 1998/07/15  
Then perform the search...  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/4_.png" width="500" alt="4">

Visualize your Time Table obtained from the search and manipulate it in order to have about one orbit per event  

* Extend all 1me periods by 360 min (6h) and shib them by -180 min (3h) to have new periods of about 6h centered on your searched 1me results  
* Name your Time Table (Mars\_SW\_Region)  

Create a new parameter corresponding to the Total B field (MGS) Idem by drag and drop  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/5_.png" width="500" alt="5">  

Visualize your data with the *ploOng data* function. Select each component of the MGS magne1c field (MSO) with some color code (bx : blue, by:green, bz : red, btot from *derived parameter* : orange) + MGS ephemeris (xyz_mso in *CYL* coordinate system)  
For Time Selec1on : select *Time Table* and drag and drop the *Mars\_SW\_Region* from *My\_Time\_Table*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/6_.png" width="500" alt="6">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/7_.png" width="500" alt="7">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/8_.png" width="500" alt="8">  

Add simulation result datasets:  
Remote data(Simulations)/MODELS@LATMOS/LatHyS_Mars_18_01_13/Magne1c_field Drag and drop each B components and select MGS S/C  


Possibly to zoom  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Mars-Global-Surveyor-plasma-data-compared-with-models/img/9_.png" width="500" alt="9">  

## References

Please refer this markdown tutorial to original version on [this site](http://typhon.obspm.fr/VESPA-tutorials/index.php?page=1)  




