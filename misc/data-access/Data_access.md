## Accessing and visualizing data in VESPA

## Summary

We're showing how to send a basic query to EPN-TAP data services from various environements, and display resulting data. The example uses spectral data.

### Change log

| Version | Author   | Notes     |
| ------- | -------- | --------- |
| 1.0     | S. Erard | 25/9/2026 |
|         |          |           |

### Requirements and dependencies

Download the last version of VO tools: 

TOPCAT: [TOPCAT](https://www.star.bristol.ac.uk/mbt/topcat/)

SPLAT-VO: [GAVO SPLAT](https://www.g-vo.org/pmwiki/About/SPLAT)     (use 4-beta at time of writing)

CASSIS: [https://cassis.irap.omp.eu/](https://cassis.irap.omp.eu/)

Aladin: [https://aladin.cds.unistra.fr/AladinDesktop/](https://aladin.cds.unistra.fr/AladinDesktop/)

• VESPA portal: [https://vespa.obspm.fr](https://vespa.obspm.fr)

• TAPhandle: [https://saada.unistra.fr/taphandle/](https://saada.unistra.fr/taphandle/)

• Astropy / pyvo: [https://www.astropy.org/](https://www.astropy.org/)

### Keywords

Spectra
VO Tools

## Searching for spectra in EPN-TAP data services

We're showing how to query EPN-TAP spectral data services from various environments and plot results.

### 1- VESPA portal

The entry page is divided in a main area listing the available EPN-TAP services and a query form on the left side. This form is a set of parameter fields which can be completed to compose a query. The query will be sent to all data services.

In the parameter fields, enter:

• target_name = Vesta

• dataproduct_type = spectrum

• Click the Submit button (or type Enter)

Services answering the query will plot in green. The complete query is displayed below the table for reuse.

Select one service (M4ast or spectro_asteroids) to open the results from this service. In most cases, thumbnails are displayed when hovering the mouse over the table. With VO tools open, select All metadata / send table or select All data / send spectra to pass the data to tools which can handle it.

Alternative: in the global result page, click the SAMP button on the row EPN-TAP compilation results, this will sent a table of all results to open tools.

<img title="Portal query" src="img/Query_VVEx.png" alt="Query_VVEx.png" width="548" data-align="center">

### 2- TOPCAT

In the icon bar of the main window, click the icon: Open… SQL (or VO / TAP query from the menu)

In the Select service pane, type keyword = PADC

Select http://voparis-tap-planeto.obspm.fr/tap & click Use service - this changes pane

In the ADQL text field, type:

`SELECT TOP 100 * from spectro_asteroids.epn_core where target_name = 'Vesta'` 

Click Run query (Fig. 1)

<img title="TOPCAT query panel" src="../../surfaces/asteroid_spect/img/TOPCAT_query.png" alt="TOPCAT_query.png" width="548" data-align="center">

After a few sec, the table should add in the table list (main window)

• Click the Display Table cells icon to open it — this is the same table you would see in the VESPA portal, except that units are not converted (time is in JD, spectral range in Hz…).

• In the main window select this table and go to the Menu: Views / Activate actions

• Click and select Plot table with Resource URL = access_url & Plot Type = Plane 

• Click on Invoke now…  the current spectrum should display in a plot window and load in the table list.

Go to the table window, select another row. It should display upon selection (wait a second if the interface does not react, or try another row)

Superpose other spectra in the same window by clicking Add new positional plot control, then defining the spectrum of interest

This is a bit tedious - sending the table to SPLAT may be easier for display (it will open the files under access_url and plot them at once)

<img title="" src="../../surfaces/asteroid_spect/img/TOPCAT_Vesta.png" alt="TOPCAT_Vesta.png" width="647" data-align="right">

### 3- CASSIS

In the main panel, Click VO / EPN-TAP Query

- The left panel displays a list of EPN-TAP services/tables

- If the service of interest is not in the list you can add it (provide server url + table name)

- Send a TAP query to the service of interest (here with service m4ast):

`SELECT TOP 100 * FROM #tablename# WHERE target_name LIKE 'Vesta' AND dataproduct_type LIKE '%sp%' and granule_gid = 'formatted'`

- Select spectra of interest and click Display all

- In the plot window / Plot min/max field, click Set. Adjust the Y axis similarly (do it again in both X and Y panels if you lose the correct scaling later).

![CASSIS_Vesta.png](img/CASSIS_Vesta.png)
Query_VVEx.png

### 4- SPLAT-VO

Launch TOPCAT in addition to SPLAT-VO. This is required for SPLAT-VO to exchange data with other applications via SAMP.

Click the ObsCore icon in the main page

- Look for the server of interest in the left side list
  
   Only TAP servers with an ivoa.obscore table are listed by default 

- If it is not there, click on Add New server, provide at least a short name and URL, e.g.: 
  
   PADC planeto
  
   http://voparis-tap-planeto.obspm.fr/tap

- Select this server, click ADQL search in the dialogue above the server list and type a complete EPN-TAP query, e.g.: 

`SELECT TOP 100 * from m4ast.epn_core where target_name = 'Vesta' and granule_gid = 'formatted'`

The table for the selected results will pop up in the right side dialogue.

Click Display all will plot all spectra at once in a single window.

Adjust settings of the plot window by clicking Configure Plot attributes.

You can dispatch spectra between plotting windows from the main window, or click the spectra in a plotting window to highlight it in the list.

![SPLAT_query.png](img/SPLAT_query.png)

### 5- Aladin

EPN-TAP services can be queried from the data tree on the left side. 

• Collection / Solar System / <target_name> contains planetary HiPS (multiresolution maps)

• Collection / Solar System / Tabular data lists the individual data services

• Click Load in the popo up window to open a query dialogue where you can type an EPN-TAP query

Tables may appear below the display area in Aladin. Some fields display as buttons which can overplot on the display.

Not all data types will plot in Aladin however — beside images and footprints (s_region ou MOC), data products need to be georeferenced (associated with spatial coordinates).

![Aladin_query.png](img/Aladin_query.png)

### 6- TAPhandle

Select PADC planeto (http://voparis-tap-planeto.obspm.fr/tap) as a server, either from the entry list or by entering the URL in the top field

• Select the spectro_asteroids service from the list of services available on this server

Type your query, either with the graphic query builder (Select What / Where / Position) or by typing it in the Plain Text Query panel at the bottom

• Click Submit — this will display the result table with all columns

• You can send this table via SAMP to other tools from the Job Control panel, Action menu

• URL columns in the table may contain a SAMP icon for individual sends, depending on format

![TAPhandle.png](img/TAPhandle.png)

### 7- python / pyvo

In your environment, type:

`import pyvo as vo`

`service = vo.dal.TAPService("http://voparis-tap-planeto.obspm.fr/tap")`

`resultset = service.search("SELECT TOP 100 * from m4ast.epn_core where target_name = 'Vesta' and granule_gid = 'formatted''")`

`resultset`

The last command will print the result table.

• Parameters can be retrieved like this:

`row = 0`

`timemin = (resultset['time_min'], row)`

• To download a file: 

`import urllib`

`url = resultset['access_url', 0]`

`file_name = resultset['file_name', 0]`

`urllib.request.urlretrieve(url, filename=file_name)`
