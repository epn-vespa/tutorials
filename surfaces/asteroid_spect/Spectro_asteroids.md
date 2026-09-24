## Planetary spectra in VO tools

## Tutorial

Comparing observational and experimental spectra


### Change log

| Version | Author   | Notes     |
| ------- | -------- | --------- |
| 1.0     | S. Erard | 20/9/2026 |
|         |          |           |

### Requirements and dependencies

Download last versions of VO tools to manage spectral data: 

TOPCAT: [TOPCAT](https://www.star.bristol.ac.uk/mbt/topcat/)

SPLAT-VO: [GAVO SPLAT](https://www.g-vo.org/pmwiki/About/SPLAT)     (use 4-beta at time of writing)

CASSIS: [https://cassis.irap.omp.eu/](https://cassis.irap.omp.eu/)

• Basic knowledge of the VESPA portal: [https://vespa.obspm.fr](https://vespa.obspm.fr)

### Keywords

Spectra
VO Tools

## Summary

This tutorial show basic spectrum manipulations and comparisons.

## Spectra of asteroid 4 Vesta

### 1- Search spectra in TOPCAT

Open TOPCAT. 

In the icon bar of the main window, click the icon: Open… SQL

In the Select service pane, type keyword = PADC

Select http://voparis-tap-planeto.obspm.fr/tap & click Use service - this changes pane

In the ADQL text field, type:

`SELECT TOP 1000 * from spectro_asteroids.epn_core where target_name = 'Vesta'` 

Click Run query (Fig. 1)

<img title="TOPCAT query panel" src="img/TOPCAT_query.png" alt="TOPCAT_query.png" width="493" data-align="center">

                                    *Fig. 1: TOPCAT query panel*



After a few sec, the table should add in the table list (main window)

• Click the Display Table cells icon to open it — this is the same table you would see in the VESPA portal, except that units are not converted (time is in JD, spectral range in Hz…).

Look at column content. This service is a compilation of various spectral collections of Solar System objects, most of which are distributed by VizieR (hence the type of references in granule_gid, etc).

• With the focus on the main window and this table selected, go to the Menu : Views / Activate actions

Click and select Plot table, click on Invoke now…  the current spectrum should display in a plot window

Go to the table window, select another row; it should display upon selection (wait a second if the interface does not react, or try another row)

<img title="" src="img/TOPCAT_Vesta.png" alt="TOPCAT_Vesta.png" width="433" data-align="right">

                                                                    *Fig. 2: TOPCAT activation actions / plot*



Notice how spectra differ in spectral range, but also that they are not provided in the same scale — some are in flux density (reflected solar irradiance) others are in reflectance (irradiance divided by the solar flux at target distance). Some spectra at longer wavelength are provided in emissivity (irradiance divided by surface black body). This particularity of Solar System observations is reflected (!) in the measurement_type parameter of EPN-TAP. Different scales cannot be compared directly.

The reflectance spectra in the NIR range (Fig. 2) display 2 bands of pyroxenes at ~ 1 and 2 µm, with varying band center & width. Band parameters depend on pyroxene composition (Fe/Mg ratio) and is an important indicator of mineralogy.


### 2- Display spectra in SPLAT-VO

Launch Splat-VO

• In the main TOPCAT window, select the current table. In the main menu, select Interop / Sent table to… SPLAT

The SPLAT table pane should pop up

• In this pane, select the 5 Mahlke spectra, click Display selected

these 5 spectra should plot in a single window 

(same thing works for the 2 Usui et al spectra; you need to send them separately because of different unit/scale; the 4 fits spectra won't plot in SPLAT for formatting reasons)

• Identify your preferred spectrum of Vesta in the NIR range.

## Experimental spectra

### 1- Search spectra in the VESPA portal

Open the VESPA portal

• Go to the Relab service — this is a VO interface on a large spectral database of mineral samples in reflectance.

This service is currently under validation, so:

select Custom mode under the cog wheel, then type 

Service URL = http://voparis-tap-sandbox.obspm.fr/tap

Schema Name = relab (lower case)

Click on the single green row, that will open the service table 

• We're looking for possible analogues to Vespa surface materials. Here we are testing pyroxenes fractions from Martian meteorites (which are basaltic materials like Vesta surface).

• In the form fields at the left of the interface, 

click Other and select from the menu: sample_classification LIKE mars-met

click Other again and select: sample_desc LIKE pyroxene

click Spectral and select: Data range is included in  [0.3, 3] µm 

click Submit

• The result table displays only 13 rows matching the query: SNC meteorites, pyroxene fraction only.

The actual ADQL query is displayed below the table (it can be used in TOPCAT, CASSIS or SPLAT-VO):

`SELECT * FROM relab.epn_core WHERE spectral_range_min >= 99930819333333.33 AND spectral_range_max <= 999308193333333.4 AND "sample_classification" LIKE '%mars-met%'`

(the spectral range is converted to Hz as per EPN-TAP standard)

Using the VESPA portal is a simple solution to get around the technicity of ADQL queries.

• With TOPCAT and SPLAT-VO still open, click All metadata / Send Table (not spectra)

The result table with add in the Table list of TOPCAT



### 2- Display and compare spectra in SPLAT-VO

In SPLAT-VO the table pane opens and lists the table sent via SAMP (this pane is actually the ObsCore query window, which can display EPNCore tables).

• Click display all. All spectra (which are linked under access_url) will plot in a single window

• Add your preferred Vesta spectrum in this plot window (from the main window, select the spectrum and check the plot window box)

Adjust the Y-scale using the icon Add… by constant (/6 in this case)

The scaled spectrum will add in the spectrum list of the main window; add it to the current plot window

Identify the best matches visually from the SNC meteorites

<img title="" src="img/SNC_plus_Vesta.png" alt="" width="493" data-align="center">

            *Fig. 3: reflectance spectra of SNC meteorite samples and Vesta in SPLAT-VO*


Compute the ratio between the Vesta spectrum and the best meteroritic match (icon Add… two spectra). Try several solutions to minimize the residuals. Notice the limitations of this procedure.

<img title="" src="img/Vesta_to_analogues.png" alt="Vesta_to_analogues.png" width="493" data-align="center">

            *Fig. 4: Ratio of Vesta spectrum to 2 closest SNC meteorite spectra in SPLAT-VO*


## Going further

Going further (e.g., determining the best fit, extracting absorption band parameters, etc) requires command line processing under python or another language.

The simplest solution to exchange data is to store your intermediate results as VOTable or fits files (supported by astropy in python). If you're not using python, remember that VOTable is not often supported (ascii or fits are more secure).
