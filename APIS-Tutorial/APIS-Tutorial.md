#APIS Tutorial

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
are resulting from the collisions between charged energetic particles - mainly
electrons - accelerated in the magnetosphere and guided along magnetic field 
lines down to the magnetic poles, and the neutral upper atmosphere. In the case
of giant planets, the upper atmosphere est mostly composed of atomic and 
molecular Hydrogen, which electronic transitions are covering the whole UV 
spectral range (H2 spectral bands). In the case of moons, the exosphere is 
producing Oxygen emissions (OI multiplets at 1304 and 1356 A). The aurorae are
thus remote proxies of active regions and dynamics of the magnetosphere, of 
plasma acceleration processes, and of the energy transfer to the planetary 
atmosphere. 

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/1_planetary_uv_observations.png " width="500" alt="Planetary UV Observations">  

_Fig. 1: Planetary UV Observations_

The [APIS](http://apis.obspm.fr) (Auroral Planetary Imaging and Spectroscopy) 
service consists in a database of planetary aurora spectro-imaging, archived at 
[PADC](http://voparis.obspm.fr) (Paris Astronomical Data Centre), coupled with
web interface. Fortuitously, Apis is also Egyptian god of fertility (of data, of
course).

The database currently contains more then 6000 individual observations of 
Jupiter, Saturn, Uranus and their moons, as well as Mars. The data were acquired
with the Space Telescope Imaging Spectrograph (STIS) and Advanced Camera for 
Surveys (ACS) instruments of the Hubble Space Telescope (HST) in the Far UV 
range (~1100 to 1700 Angström) since 1997. Several processing level with added 
value are available.

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

#### Main Selection Criteria

Data can be quickly ordered and visualized thanks to the conditional search 
interface (Search for Data), see Figure 2. The default selection parameters are
generic ones (target, telescope, instrument, observation type, instrumental 
mode, date of observation) and practical (observation campaign name, 
unique observation identifier). Once a query is done, the corresponding time 
interval is automatically displayed and is kept for any further queries. 
Use the `Clear` and `Clear Date` buttons to empty the query form fields.

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/2_search_for_data.png" width="500" alt="Search for Data">  

_Fig. 2: Search for Data_

> ##### Training
> 
> After connecting, do a few typical searches. Check HST observations of 
> Jupiter, Saturne, Uranus and their moons, and see how they differ.
> 
> What about Mars observations? Can we see aurora?

NB: *Auroral emissions are visible around the magnetic poles, mainly as 
circumpolar ovals. Their morphology differs from a planet to the other, depending
on the characteristics of the magnetosphere and its interaction with the solar
wind.*

#### Secondary Query Parameters

Specific query parameters (instrumental of physical) providing advanced search 
capabilities are available by clicking on `Advanced research` (bottom-right of
the search interface, see Figure 2). When the secondary search interface is 
visible and a query has been issued, the corresponding range of integration time   
is automatically displayed and is taken into account for any further queries.

> ##### Training
> 
> Identify Saturn observations when the Cassini mission was located in the 
> Solar Wind (sub-solar distance of the magnetopause larger than 30 Rp) and 
> was able to acquire _in situ_ measurements.

NB: *This type of combined analysis of several space plasma datasets (in situ 
and remote) is specifically the scope of another VO tool: [AMDA](http://amda.cdpp.eu)
developed by the [CDPP](http://cdpp.eu) (Centre de Données de Physique des Plasmas)*

#### Processing Levels

The search results are showing several columns, corresponding to different 
processing levels, each available with various file format. FITS files are 
aimed at experienced used willing to perform his own data analysis, while 
graphical formats (PDF and JPEG) are directly usable (e.g., for communications).

Three processing levels are available for images:

+ **Raw data** [level 1]: images from the STSci (Space Telescope 
Science Institute) database. STSci is in charge of the initial calibration of 
HST observations. The FITS files contain 3 extensions including the science
data (extension 0), the measurement error (extension 1), and the dead pixel 
map (extension 2).

+ **Processed data** [level 2]: images rotated and centred (corrected for the 
telescope inclinaison and pointing). The FITS files contain 7 extensions 
including the science data (extension 0) and the planetocentric coordinates 
of each pixel (extensions 1 to 6), namely: (1) latitude, (2) local time, (3) 
solar zenital angle and (4) observer's zenital angle at the cloud altitude 
(i.e., at limb altitude), (5) latitude and (6) local time at the auroral 
altitude (above cloud level).

+ **Cylindrical projections** [level 3]: images calibrated into physical units 
and projected into a cylindrical frame at the aurora altitude, after subtraction
of a modeled background.

+ **Polar projections** [level 3]: same as above with polar projections.

Three processing levels are available for spectra:

+ **Raw data** [level 1]: 2D spectra from the STSci archive. The X 
dimension of the spectral axis. The Y dimension is the spatial axis, along the
slit direction. The FITS files contain the same three extensions as for raw 
images.

+ **Processed data** [level 2]: 2D spectra extracted and calibrated in wavelength.

+ **1D spectra** [level 3]: typical 1D spectra (with 3 occurrence levels) 
extracted from the 2D processed spectra.  


> ##### Training
> 
> Click on a thumbnail image to display a higher resolution image, and compare
> with neighboring observation with the `<--` and `-->` keys. 
>
> Click on the `JPG` or `PDF` link to get the full resolution image.

<h3 id="part2">Interactive Processing with VO Tools</h3>

Thanks to the underlying VO-compliant database system, another specific feature 
of APIS is to allow direct online processing or visualisation, without having
to download the data.

#### Reading and Analyzing Images

In the image search results, the FITS formatted processing levels (levels 1 and 
2) can be displayed using the `Aladin` link below the thumbnail image. 
This launches the Aladin tool in another browser window, and displays the image
directly from APIS. The connection is made through the SAMP (Simple Application
Messaging Protocol), materialized by a yellow target icon in the menu bar.

> ##### training
>
> Examples of processing in Aladin:
> 
> + Change image contrast with a right mouse button click and move vertically
> to adjust the contrast, or horizontally to adjust the cuts;
> 
> + The image contrast can also be modified via the `Image`/`Pixel Constrast` 
> menu item. Various transfer functions can also be select (linear, logarithmic,
> etc);
>
> + Display the histogram of pixel intensity (`pix` option), the full 
> distribution is available clicking on `all values`. Identify the different
> components of the image (background, planet, aurora) moving the cursor on the
> color table;
> 
> + Superimpose intensity iso-contours (`cont` option);
> 
> + Plot the intensity distribution along a cut going through the auroral oval
> (`dist` option).

Aladin also allows you to load several images and compare them.

> ##### Training
> 
> Load several **processed** images (e.g., 4 to 6 images from the January 2004 
> Saturn campaing, between January 25th and 30th, during the Saturn approach phase
> of Cassini). 
> 
> Have a look to the various extensions of 1 of those images, and then display
> all the images simultaneously (`multiview` option). 
> 
> Notice the apparition of intense emissions on the dawn side (left-hand side)
> on January 28th. In order to quantitatively identify the location of active
> regions, superimpose iso-contours for each image and then look for the pixel
> locations corresponding to bright regions on the last 2 extensions.
> 
> Check that the bright emissions on January 28th are located at higher latitude
> than the other days.

NB: *Saturn auroral emissions are very sensitive to the Solar Wind conditions. 
The event observed on January 28th 2004 illustrates the effect of an incoming 
interplanetary shock at Saturn, which translate into a strong auroral forcing
on the dawn side.*

#### Reading and Analyzing Spectra



<h2 id="References">References</h2>
The Auroral Planetary Imaging and Spectroscopy (APIS) service (2015)
L. Lamy, R. Prangé, F. Henry, P. Le Sidaner, Astron. and Computing, 
[arXiv](https://arxiv.org/abs/1501.03920), 
[DOI](http://dx.doi.org/10.1016/j.ascom.2015.01.005).



