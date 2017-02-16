#APIS

[Abstract](#Abstract)  
[Authors](#Authors)  
[Change Log](#Log)  
[Intro](#Introduction)  
[Tutorial](#Tutorial)  
[References](#References)

<h2 id="Abstract">Abstract</h2>

This is user tutorial for the [APIS](http://apis.obspm.fr) (Auroral Planetary
Images and Spectra) database. Connection on the APIS web interface requires a
login ([register](http://apis.obspm.fr/spip.php?page=register&choix=register)). 
The data will be loaded for analysis in [Aladin](http://aladin.u-strasbg.fr) 
and [Specview](http://www.stsci.edu/institute/software_hardware/specview/).

<h2 id="Authors">Authors</h2>

Laurent Lamy

Edited by Baptiste Cecconi

<h2 id="Log">Change Log</h2>

|Version|Name|Note|
|---|---|---|
|1|[Baptiste Cecconi](https://github.com/BaptisteCecconi)|Conversion from PDF version of tutorial (in french)|

<h2 id="Intro">Introduction</h2>

Remote ultraviolet (UV) observations of giant planets and their moons are a 
rich source of informations on those planetary systems. Their various elements
(rings, moons, atmosphere) reflect solar light and their magnetospheres produce
intense atmospheric auroral emissions (Figure 1). Aurora are specifically 
are resulting from the collisions between charged energetic particles -- mainly
electrons -- accelerated in the magnetosphere and guided along magnetic field 
lines down to the magnetic poles, and the neutral upper atmosphere. In the case
of giant planets, the upper atmosphere est mostly composed of atomic and 
molecular Hydrogen, which electronic transitions are covering the whole UV 
spectral range (H2 spectral bands). In the case of moons, the exosphere is 
producing Oxygen emissions (OI multiplets at 1304 and 1356 A). The aurorae are
thus remote proxies of active regions and dynamics of the magnetosphere, of 
plasma acceleration processes, and of the energy transfer to the planetary 
atmosphere. 

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/1_planetary_uv_observations.png " width="500" alt="Planetary UV Observations">  

Fig. 1 *Planetary UV Observations*

The [APIS](http://apis.obspm.fr) (Auroral Planetary Imaging and Spectroscopy) 
service consists in a database of planetary aurora spectro-imaging, archived at 
[PADC](http://voparis.obspm.fr) (Paris Astronomical Data Centre), coupled with
web interface. Fortuitously, Apis is also Egyptian god of fertility (of data, of
course).

The database currently contains more then 6000 individual observations of 
Jupiter, Saturn, Uranus and their moons, as well as Mars. The data were acquired
with the two spectro-imagers of the Hubble Space Telescope (HST) in the UV 
range since 1997. Several processing level with added value are available.

The data are accessible online at [http://apis.obspm.fr](http://apis.obspm.fr). 
They can be easily ordered and displayed thanks to its dedicated search interface
(conditional search on date, instrumental characteristics, planetary physical
parameters), as showed in [Part 1](part1) of the tutorial. Once a request is
done, it is also possible to directly work online with the data available in 
[FITS](http://fits.gsfc.nasa.gov) format, thanks to VO (Virtual Observatory) 
tools, as shown in [Part 2](part2).

The goal of this tutoriel is to get familiar with the APIS features.

<h2 id="tutorial">Tutorial</h2>

<h3 id="part1">Searching for Data</h3>

<h4>Main selection criteria</h4>

Data can be quickly ordered and visualized thanks to the conditional search 
interface (Search for Data), see Figure 2. The default selection parameters are
generic ones (target, telescope, instrument, observation type, instrumental 
mode, date of observation) and practical (observation campaign name, 
unique observation identifier). Once a query is done, the corresponding time 
interval is automatically displayed and is kept for any further queries. 
Use the *clear" and *Clear Date* buttons to empty the query form fields.

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/2_search_for_data.png" width="500" alt="Search for Data">  

Fig. 2 *Search for Data*


<h2 id="References">References</h2>
The Auroral Planetary Imaging and Spectroscopy (APIS) service (2015)
L. Lamy, R. Prangé, F. Henry, P. Le Sidaner, Astron. and Computing, 
[arXiv](https://arxiv.org/abs/1501.03920), 
[DOI](http://dx.doi.org/10.1016/j.ascom.2015.01.005).



