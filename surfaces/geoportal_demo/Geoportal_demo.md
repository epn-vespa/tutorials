*S. Erard, Astro-CC Scientific training event, Strasbourg 1/10/2026*

&nbsp;
&nbsp;
 
# VESPA geoportal demo





The VESPA geoportal has functionalities similar to GIS (Geographic Information System) commonly used in planetary science, such as JMars. But in contrast to GIS it uses only VO standards and protocols, and is interfaced with EPN-TAP data services. It is more efficient and faster than Aladin Desktop because it only accesses planetary data and uses a database integrating metadata from all EPN-TAP services.



## Preliminaries - Setting up VO tools

VO tools default to standard celestial conventions, which differ from those used in planetary science. The main differences concern the orientation of planetary coordinate frames, and measurements in solar reflected light. Spatial frames in particular must be consistently setup to plot data correctly on planetary surfaces.

See here to setup TOPCAT and Aladin: https://github.com/epn-vespa/tutorials/blob/master/misc/setting_up_tools/setting_up_tools.md



## Spatial features on Mars

Go to the Geoportal page: https://padc-findme.obspm.fr

Select Mars as a target. That will open a new page with the MOLA shaded relief map in 3D spherical projection. You can first push the table area below AladinLite to make the display more visible.

Zoom in and out, rotate the sphere, try the various HiPS available

Notice the number of data elements found in EPN-TAP services (top right)

Use the grid and the resolver in AladinLite (relying on the USGS gazetteer of nomenclature)



### Hand-drawn MOC

Draw a region of interest from the menu Draw a MOC. The region of valleys NE of Valles Marineris is fine, size ~ 20 ° x 20° 

- You may have to click the Apply selection button

- Notice how the number of data elements reduces - it now only returns data elements within the drawn MOC.



In the filter panel on the right, select service_title = mars_craters_lagain 

Click Submit below the filters

- Notice how the number of data elements reduces again (only returns craters within the MOC)



<img title="Geoportal Mars" src="img/Geoportal_Mars2.png" alt="Geoportal_Mars2.png"  width="433" data-align="center">

Open the table area below the display if you've minimized it. In the result table, add display of diameter then sort by diameter

- We want to retain ~ 200 craters (end of 4th pages of 50 results; > 25 km in the example)

- Set diameter cutoff to 25 km + click Submit

   This leaves 200 results in the example

Click on the MOC buttan at the left of the table to display selected crater MOC

Click Download VOTable (the big black arrow in the table header) to save it on your disk



### Display in TOPCAT

Load this VOTable in TOPCAT

This is where you need to setup TOPCAT properly:

- In Axes: unset reflect long (all longitudes would be reversed otherwise)

- In Axes / grid: uncheck sexagesimal

Open the TOPCAT table: this is the complete EPN-TAP table for the selected craters

Click Plane plot to display 

- In the Form panel, use Mode = Aux and Aux = diameter to plot the size in colour

- Add an Area plot control, select the table => The craters MOC will show up immediately

- Click on a crater in the display => the row is selected in the table (and vice versa)

- Click the Stat Icon (big Sigma) to get the mean and std-dev crater size.



You can also display a small area around the feature of interest, which helps visual inspection of individual features.  In the main window, select the crater table, then select Views > Activate Actions from the menu

- Select and check Display HiPS cutouts

- Set RA = C1min, Dec = C2min, Field of View = 3 deg

- Select HiPS Survey = your preferred Mars HiPS (in Other > mars)

- Click on craters in the plot (or select a table row) => a small map of the area will display in a pop-up window

(alternatively, you can send the table via SAMP to Aladin Desktop, and load a HiPS of the planet. Double-clicking on the table will  plot crater centres. When clicking a feature in any window/table, all other displays will remain synchronized).


<img title="TOPCAT Mars" src="img/TOPCAT_cutout.png" alt="TOPCAT_cutout.png"  width="433" data-align="center">


### MOC from HiPS

Back to the Geoportal, on Mars. 

MOC can be defined from a HiPS - this makes sense for HiPS exposing quantitative values, e.g. altimetry, but also retrieved abundance of a given mineral.

- Click the menu Add MOC from HiPS

- Select Omega olivine_osp2

- Setup the cursor to 60% (~ 1.2) - this will define a MOC from the largest values only

- Setup MOC order = 8

- Click the blue arrow to extract the MOC

These regions are very small and are plotted on a dark background, you need to zoom in enough to see them. A possible method is to open the menu MOC created from HiPS and center one of them, then zoom in.

If you're lost: in this case go to the Jezero area (NE of Syrtis Major ~ 78° E / 21°N)


You can save the current configuration from the Session menu (and reload it later from the target selection page).


<img title="Mars olivine" src="img/Mars_olivine.png" alt="Mars_olivine.png"  width="433" data-align="center">


## Morphological units on Mercury

Select Mercury as a target.

Switch to the MDIS colour mosaic

We will use the shapefile of a Mercury pyroclastic deposit. This was derived from the analysis of MESSENGER images by Leon-Dasi et al 2023, and distributed as supplementary material to the paper.

Use the file Shapefile_vent_327_deposit.shp, a deposit straddling a small crater

- Drop it on the AladinLite display of the geoportal page. Select order = 12 & mode = union in the popup window



[this use case makes full sense when using individual spectra from MESSENGER - today we'll use craters instead]



In the filter section on the right, select the Mercury_craters service and click Submit

- In the MOC panel, display information on the MOC created from the shapefile, check the box (and uncheck hand-drawn MOCs if any). Click Overlaps then the Apply Selection button

- This will select only craters which footprint overlaps the selected MOC, i.e. the unit of interest (only 2 of them)

- Again, you can plot their MOC from the left side button of the table




<img title="Geoportal Mercury" src="img/Geoportail_Mercury.png" alt="Geoportal_Mercury.png"  width="433" data-align="center">


 From the AladinLite Stack menu / Overlays you can save all displayed MOC on disk. The converted shapefile will be saved as an ascii MOC (in json format).

Load this file into Aladin Desktop - which wouldn't accept a .shp file

You can similarly save the crater MOCs from AladinLite.

Alternatively, you can drop the complete result table in Aladin Desktop for visu (or load it in TOPCAT then SAMP it to Aladin).

By double-clicking on the table in Aladin, it would open in the drawer below the display. Search the Coverage column and click the button to plot the crater MOC.

(alternatively, the crater centre will plot immediately, but you need to use a filter to draw the contour on this particular planet. You can load it from Catalogue > Create a filter then Advanced mode - use [this](img/Mars_Craters.ajs)). 


<img title="Aladin Mercury" src="img/Aladin_Mercury.png" alt="Aladin_Mercury.png"  width="433" data-align="center">


A natural application is to identify rapidly spectra within morphological surface units, compute their mean and standard deviation, and browse them to check the homogeneity of spectral properties (or not). This is currently feasible in python; such a functionality in VO tools would make it even more convenient.


**Note**

- The geoportal uses a collection of metadata from all services stored on PADC machines. This is required to maintained responsiveness

- The copy may therefore not reflect recent modifications in the services - but it will be working even if the EPN-TAP services are down

- Some operations query the EPN-TAP services however, in particular the result VOTable stored on the user disk, and the visualization of granules in the VESPA portal. The services have to be running and reachable for these functionalities to work


