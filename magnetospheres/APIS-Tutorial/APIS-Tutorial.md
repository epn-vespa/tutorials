## APIS Tutorial

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

**Aladin**

2D spectra can be read the same way as images with Aladin.

When a 2D spectrum is acquired just before or just after an image, the telescope
usually stays aligned and the spectrum is simply obtained adding a slit (and
a grating) on the optical path, along the Y axis of the detector and centered
in the middle of the X axis. The 2D spectrum hence gives a spatial information
along the slit, and a spectral information perpendicularly to the slit. Figure
3 illustrated the link between an image and a 2D spectrum in the case of Saturn.
It is possible to identify in the 2D spectrum the contribution of the sky (almost
no signal), of the rings and the planetary disc (emissions at large wavelength
corresponds to the reflected solar light), and of wide band signatures 
corresponding H and H2 auroral emissions.

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/3_images_and_2d_spectra.png" width="500" alt="Images and 2D Spectra">  

_Fig. 3: Images and 2D spectra corresponding to Saturn in december 2000._

> ##### Training
>
> Load a 2D spectrum with Aladin (select the spectrum `o6baa7xkq` of the 
> 2000-2001 Jupiter campaign, acquired right after an image). 
>
> Adjust the contrast to enhance the wide band emissions. 
>
> In the `Frame` drop-down menu (top-right corner the the image panel), select
> `XY Fits`. The (X,Y) pixel coordinates are then displayed while moving the 
> pointer over the image. Find the Y values of the four main wide band emission
> boundaries. 
>
> With the help of the image (as on Figure 3), you can visually identify 
> which place correspond to the auroral oval.

NB: *The location of the slit is generally selected so that it intercepts 
several regions of emissions (cuts of the main auroral oval, polar emissions,
Galilean moon controlled emissions in the case of Jupiter, etc).*

**Specview**

Specview is a spectra analysis tool. It provides an graphical interface to 
plot and superimpose 1D spectra - intensity versus wavelength - extracted from 
2D or 1D spectra (Figure 4). Contrarily to Aladin, you have to manually start up
Specview before clicking on the `Specview` link below the spectra available in
FITS format in the search results of spectra (columns 1 and 3).

The data are then transfered from APIS to Specview via SAMP.

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/4_1d_spectra_specview.png" width="500" alt="1D Spectra in Specview">  

_Fig. 4: Extracted 1D spectra in 2 bright emission regions of the `o43ba1bnq` 2D 
spectrum of Jupiter. The vertical bar at 1216 A indicates H-Lyman α line._

> ##### Training
>
> Load the same 2D spectrum in Specview. There are several ways to extract a 1D 
> spectrum: 
> + First plot the sum of all lines of the 2D spectrum with the `Go` button on
> the right-hand side of `All lines`. Each line Y(X), i.e. each pixel along the 
> slit, corresponds to an individuel 1D spectrum). 
>
> + Then plot successively the integrated spectrum on each bright emission 
> region as identified previously, using the `Ymin` and `Ymax` values in the 
> `Top` and `Bottom` fields and then click on `Go`.
>
> The various plots are kept in memory. It is possible to superimpose them with
> the `Coplot` menu: select the spectra to be compared and then `Plot` (see 
> Figure 4). The `Process` button is used to apply extra processings, such as a
> multiplying factor to one of the spectra. 
>
> Normalize the spectra from each of the four regions identified around de 1550 A
> and superimpose them. What difference appears at small wavelength?

NB: *When auroral emissions are produced under an organic atmospheric layer 
(such as CH4), they are absorbed below 1500 A (Figure 5). This absorption is 
used to measure the penetration depth, and thus the energy of the electrons.

Level 3 data are directly providing three typical 1D spectra, which are 
respectively the mean spectra computed on (i) all, (ii) 50% or (iii) 10% most 
intense 1D spectra (lines) of the 2D spectrum.

**Superimposing transitions and theoretical spectra**

Specview can also query online or local catalogues of chemical transition lines
in order to identify chemical species observed in the studied spectra. As aurora
are atmospheric emissions, their spectra directly provides the atmospheric 
composition. For the giant planet, we mostly expect (1) the intense Lyman α of
Hydrogen at 1216 A and  (2) the Werner and Lyman bands of H2 between 800 and 
1700 A (Figure 5).

<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/APIS-Tutorial/img/5_synthetic_ly_alpha.png" width="500" alt="Synthetic Lyman alpha spectrum">  

_Fig. 5: Synthetic spectrum of the H-Lyα line of H2 bands, together with the 
absorption cross-section of CH4 (secondary atmospheric species capable of 
absorbing auroral emission below 1400 A)._

**(1) H**: We suspect that the bright line around 1220 A is the H-Lyα line. We 
will check this now.

The `Line IDs` button at the top-right corner of the Specview window is popping 
up a new window where it is possible to look for chemical transitions, either
locally (top part, with pre-recorded lines) or online (bottom part, with online
catalogues).

> ##### Training
>
> Set up a local query in the observed spectral range. Select the Lyα line and 
> display it on the spectrum with `Draw`. If the observed Lyα line does not show
> up at the right place, this means that the 2D spectrum was not calibrated in
> wavelength. It is easy to check with the same operation on the corresponding 
> 1D spectra, which have been correctly calibrated.

NB: *Atomic Hydrogen is not only present in the observed atmosphere but also
in the geocorona. When the geocorona portion intercepting the HST line of sight
is lit by the Sun, the Terrestrial Hydrogen scatters back the solar light on the 
H-Lyα transition.  This explains that this line is so bright all along the slit
and not only at the place of the aurora. Furthermore, although that line is very
thin, it is showing a rather large profile on the 2D spectrum, imposed by the
width of the slit. This can be checked looking at spectra obtained with slits of
various width (`filter or aperture` criterion, then `G140L / 52 X 2` , which 
corresponds to an aperture of 52 x 2 arcsec). Other lines from the geocorona 
(such as that of the Oxygen at 1305 A) can also contaminate the observation.*

**(2) H2**: We now want to check that the rest of the observed spectrum 
corresponds to H2 emissions.

It is possible to apply the same method as described in **(1)** to find the
individual transitions of the molecule.

> ##### Training
>
> Example: 
> 
> Once in `Line IDs`, choose the online catalogue named `SESAM` in the 
> `Configuration` menu and select the `Search linelists using VAMDC infrastructure` 
> option: check the `Molecule` species and specify `H2`, check the `Radiative`
> process and select a limited spectral interval such as 1550-1600 A. Display
> a few theoretical lines on the observed spectrum.

It is clear that this approach is useful for identifying a specific transition 
in a limited spectral interval, with a width of a few A, but it is not very 
appropriate for a larger interval. H2 produced a large number of lines spanning
over the observed UV range, forming band spectra (Werner and Lyman). In order to
check that the observed spectrum corresponds to the H2 bands, it is easier to 
compare directly with a theoretical spectrum combining all individual H2 
transitions. We will use here the synthetic spectrum
[H2_spectra_Menager_1keV.fits](http://voparis-srv.obspm.fr/vo/planeto/apis/dataset/Bastet/H2_spectra_ Menager_1keV.fits)
in a local access mode.

> ##### Training
>
> Load the theoretical spectrum. 
>
> Then load your observed 2D spectrum (do not use the 1D spectra here, as their
> format doed not allow Specview to perfom the operations hereafter described).
> Zoom on the Y axis (not on X) to adjust the intensity scale to maximum signal 
> observed at large wavelength. Double-click on the spectral peak between 1500 
> and 1600 A, then click in the new window on the theoretical spectrum previously
> loaded. It will then be normalized at the place of the du doucle-click and
> overplotted to observed spectrum.

The observed wide band spectrum is showing the general aspect of the H2 bands.

NB: _Two noticeable differences can be observed:_
+ _the relative intensity between the observed and theoretical spectra could be 
fainter below 1400 A, due to signal absorption by atmospheric CH4 (see Figure 5)._

+ _an excess of absorbed signal above 1600 A, if the observed spectrum includes
a contribution a solar light reflected by the atmosphere._

#### Interoperability

As APIS has been built using VO standards, it is easy to interface 
this database to interoperable tools.

The [VESPA](http://vespa.obspm.fr) and [CDPP/AMDA](http://amda.cdpp.eu) portals 
can be used to query APIS remotely.

> ##### Training
>
> Example: 
> 
> Search for Uranus data in VESPA. Display APIS data (`display resuts`) and 
> visualize the available search parameters (`show columns`). Test a conditional 
> search on one or several os those criteria, using the `advanced query form`
> button next to the `display results` button on the previous page.


<h2 id="References">References</h2>
The Auroral Planetary Imaging and Spectroscopy (APIS) service (2015)
L. Lamy, R. Prangé, F. Henry, P. Le Sidaner, Astron. and Computing, 
[arXiv](https://arxiv.org/abs/1501.03920), 
[DOI](http://dx.doi.org/10.1016/j.ascom.2015.01.005).



