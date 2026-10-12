## Accessing EPN-TAP services from different tools


## Summary

We're showing how to search for data in EPN-TAP data services from various environments, and display the results. This tutorial uses spectral data as an example.

[Introduction](#introduction)  
[VESPA portal](#1--vespa-portal)  
[TOPCAT](#2--topcat)  
[CASSIS](#3--cassis)  
[SPLAT-VO](#4--splat-vo)  
[Aladin](#5--aladin)  
[TAPhandle](#6--taphandle)  
[python](#7--python--pyvo)  
[To go further](#to-go-further)  


### Change log

| Version | Author   | Notes     |
| ------- | -------- | --------- |
| 1.0     | S. Erard | 25/9/2026 |
|         |          |           |

### Requirements and dependencies

This tutorial refers to several standard concepts of the Virtual Observatory. A glossary is available [here](https://ivoa.net/astronomers/vo_glossary/).

Download the latest versions of VO tools: 

* TOPCAT: [https://www.star.bristol.ac.uk/mbt/topcat/](https://www.star.bristol.ac.uk/mbt/topcat/)

* SPLAT-VO: [https://www.g-vo.org/pmwiki/About/SPLAT](https://www.g-vo.org/pmwiki/About/SPLAT)     (use 4-beta at time of writing)

* CASSIS: [https://cassis.irap.omp.eu/](https://cassis.irap.omp.eu/)

* Aladin: [https://aladin.cds.unistra.fr/AladinDesktop/](https://aladin.cds.unistra.fr/AladinDesktop/)

* VESPA portal: [https://vespa.obspm.fr](https://vespa.obspm.fr)

* TAPhandle: [https://saada.unistra.fr/taphandle/](https://saada.unistra.fr/taphandle/)

* Astropy / pyvo: [https://www.astropy.org/](https://www.astropy.org/)

### Keywords

Spectra;
VO Tools

## Introduction

Most Solar System data are shared in the VO as data services compliant with the EPN-TAP standard. Those can be searched in many ways: 

- The **VESPA portal** is a user-friendly interface for quick search and data discovery, hiding the complexity of the query system (ADQL and EPN-TAP)

- **VO tools** provide a lower-level but more detailed access, explicitly using the power of the query system, as well as advanced display and processing features

- More **generic VO portals** such as TAPhandle can access these services

- **python libraries** allow flexible access to the data and the construction of complex workflows.

All these environments access the same EPN-TAP services (Fig 1). They differ mainly in the way queries are submitted, data are displayed, and further processing is performed. We're showing here how to send similar queries from various environments, and plot the results. We search for spectra of asteroid 4 Vesta as a simple example because several spectral services provide data for this target.

<img title="Data access" src="img/VESPA_data_arch.png" alt="VESPA_data_arch.png" width="600">

*Figure 1. One set of EPN-TAP services, many ways to access it.*


VO tools are specialized in a type of data product, although they tend to support many situations. 

- TOPCAT mostly handles tables

- CASSIS and SPLAT-VO handle spectra

- Aladin handles images and maps, plus georeferenced objects

They all have direct access to VO data services, with particularities detailed below.



### 1- VESPA portal

The entry page is divided in a main area listing the validated EPN-TAP services and a query form on the left side. This form is a set of parameter fields which can be completed to compose a query (Fig 2). The query will be sent to all data services.

In the parameter fields, enter:

- target_name = Vesta

- dataproduct_type = spectrum

- Click the Submit button (or type Enter)

The list of services is then updated and reordered: 

- Services answering the query are displayed in green at the top of the list 

- Services displayed in gray do not match the query

- Services displayed in red do not respond correctly (this may happen if your query contains non-standard parameters, or because of internal issues)

- The complete query is displayed below the table for reuse.

(click the ADQL Query field on top of the form to enter a more formal/powerful query)

<img title="Portal query" src="img/Query_VVEx.png" alt="Query_VVEx.png" width="600">

*Figure 2. VESPA portal: query form and service list.*


Select one service in green (M4ast or spectro_asteroids) to open the results from this service. In most cases, thumbnails are displayed when hovering the mouse over the table. With VO tools open, select All metadata / send table or select All data / send spectra to pass the data to tools which can handle it.

> Alternative: in the global result page, click the SAMP button on the row `EPN-TAP compilation results`, this will send a table of all results to open tools.

The VESPA portal is a discovery interface dedicated to Solar System data. It provides access to EPN-TAP services validated within the VESPA ecosystem and allows users to query them simultaneously through a unified interface.

### 2- TOPCAT

TOPCAT accesses data services one by one.

In the icon bar of the main window, click the icon: Open… SQL (or VO > TAP query from the menu)

In the Select service pane, type keyword = PADC

Select http://voparis-tap-planeto.obspm.fr/tap and click Use service - this changes panel

In the ADQL text field, type (Fig 3):

``SELECT TOP 100 * from spectro_asteroids.epn_core where target_name = 'Vesta'``

Click Run query (see Figure)

You've just selected the main data server in Paris and sent a query to one of its tables — congrats!

> Alternative: select one of the *.epn_core items in the list (= data tables) and play with the Examples button at the bottom.

<img title="TOPCAT query panel" src="../../surfaces/asteroid_spect/img/TOPCAT_query.png" alt="TOPCAT_query.png" width="600">

*Figure 3. TOPCAT: TAP query window.*

After a few seconds, the result table should be added in the table list (main window)

- Click the Display Table Cells icon to open it — this is the same table you would see in the VESPA portal, except that units are not converted (time is in JD, spectral range in Hz…).

- In the main window select this table and go to the Menu: Views / Activate actions

- Click and select Plot table with Table location = access_url & Plot Type = Plane 

- Click Invoke now…  The current spectrum should display in a plot window and load in the table list

Go to the table window, select another row (Fig 4). It should display upon selection (wait a second if the interface does not react, or try another row)

Superpose other spectra in the same window by clicking Add new positional plot control, then defining the spectrum of interest. This is a bit tedious - sending the whole table to SPLAT may be easier in such cases (it will open the files under access_url and plot them together at once).

TOPCAT is an all-purpose table handling tool and VO client, filled with powerful graphic functions (including for spatial data, but not images).

<img title="TOPCAT" src="../../surfaces/asteroid_spect/img/TOPCAT_Vesta.png" alt="TOPCAT_Vesta.png" width="650">

*Figure 4. TOPCAT: results table, activation actions window, and spectrum plot on activation.*

### 3- CASSIS

In the main panel, Click VO / EPN-TAP Query

- The left panel displays a list of EPN-TAP services/tables

- If the service of interest is not in the list you can add it (provide server url + table name)

- Send a TAP query to the service of interest (here with service M4ast):

`SELECT TOP 100 * FROM #tablename# WHERE target_name LIKE 'Vesta' AND dataproduct_type LIKE '%sp%' and granule_gid = 'formatted'`

- Select spectra of interest and click Display all (Fig 5)

- In the plot window, Plot min/max field, click Set. Adjust the Y axis similarly (do it again in both X and Y panels if you lose the correct scaling later).

CASSIS is very efficient to handle scales, units, and spectral quantities, and to analyse spectral lines. It is also connected to atomic and molecular databases.


<img title="CASSIS query" src="img/CASSIS_Vesta.png" alt="CASSIS_Vesta.png" width="600">

*Figure 5. CASSIS: EPN-TAP query and spectra display.*


### 4- SPLAT-VO

Launch TOPCAT in addition to SPLAT-VO. This is required for SPLAT-VO to exchange data with other applications via SAMP. Launching SPLAT may open a terminal window in some configurations (MacOS) — keep it open.

Click the ObsCore icon in the main page

- Look for the server of interest in the left side list
  
   Only TAP servers with an ivoa.obscore table are listed by default, but you can add yours 

- If it is not there, click on Add New server, provide at least a short name and URL, e.g.: 
  
   PADC planeto
  
   http://voparis-tap-planeto.obspm.fr/tap

- Select this server, click ADQL search in the dialogue above the server list and type a complete EPN-TAP query, e.g.: 

`SELECT TOP 100 * from m4ast.epn_core where target_name = 'Vesta' and granule_gid = 'formatted'`

The table for the selected results will pop up in the right side dialogue (Fig. 6)

Click Display all to plot all spectra at once in a single window.

Adjust settings of the plot window by clicking Configure Plot attributes.

You can dispatch spectra between plotting windows from the main window, or click the spectra in a plotting window to highlight it in the list.

SPLAT-VO is particularly efficient to display many spectra with minimum manipulations. It is also connected to experimental spectroscopy services in the VO.


<img title="SPLAT query" src="img/SPLAT_query.png" alt="SPLAT_query.png"  width="650">

*Figure 6. SPLAT-VO: ADQL search and result table.*

### 5- Aladin

In contrast with the other tools, Aladin is mostly a celestial image / map environment. It includes a generic TAP Client, handles planetary coordinates, footprints (s_region or MOC) and georeferenced data products (associated with spatial coordinates), but the current use case is not adapted (spectra of asteroids are usually provided without coordinates). To illustrate a similar situation, we will search for craters on Mars instead.

EPN-TAP services can be queried from the data tree on the left side. 

- Collection / Solar System / target_name contains planetary HiPS (multiresolution maps) - pick the Mars MOLA shaded relief

- Collection / Solar System / Tabular data lists the individual data services

- Click the icon of the mars_craters service to open a pop-up window

- Click `Load` in the pop-up window to open a TAP query dialogue and type (Fig. 7):

`SELECT TOP 100 * from mars_craters.epn_core where diameter > 100`

- A new entry will appear in the stack (right side of the display)

- If you double click on this new entry, a table will appear below the display area. When the table contains features with coordinates, those will be highlighted in the image. 

- Click a row to center this crater on the map. The `Coverage` field displays a button to overplot the footprint on the map. 


<img title="Aladin query" src="img/Aladin_query.png" alt="Aladin_query.png"  width="650">

*Figure 7. Aladin: TAP query dialogue and Mars craters over the MOLA map.*

### 6- TAPhandle

Select PADC planeto (http://voparis-tap-planeto.obspm.fr/tap) as a server, either from the entry list or by entering the URL in the top field

- Select the spectro_asteroids service from the list of services available on this server

Type your query, either with the graphic query builder (Select What / Where / Position) or by typing it in the Plain Text Query panel at the bottom (Fig. 8)

- Click Submit — this will display the result table with all columns

- You can send this table via SAMP to other tools from the Job Control panel, Action menu

- URL columns in the table may contain a SAMP icon for individual sends, depending on format


<img title="TAPhandle query" src="img/TAPhandle.png" alt="TAPhandle.png"  width="650">

*Figure 8. TAPhandle: query and result table.*

TAPHandle has similarities with the VESPA portal, but is a more generic interface to the Virtual Observatory infrastructure. It supports the full TAP protocol and can access any TAP-compliant service. In contrast, the VESPA portal is specifically designed for Solar System data and provides dedicated support for EPN-TAP services.

### 7- python / pyvo


Python gives the most flexibility: the same query can be sent, then results filtered, plotted or passed to your own analysis code. We use `pyvo`, the Python library for VO services.

* **Send the query**

```python
import pyvo

service = pyvo.dal.TAPService("http://voparis-tap-planeto.obspm.fr/tap")

query = """
SELECT TOP 100 *
FROM m4ast.epn_core
WHERE target_name = 'Vesta' AND granule_gid = 'formatted'
"""

table = service.search(query).to_table()   # an Astropy table
print(len(table), "spectra found")
```

* **Look at the results**

```python
table["granule_uid", "time_min", "target_name"][:5]
```

This shows the first five rows, with a few useful columns. Use `table.colnames` to list all columns.

* **Download a spectrum**


```python
from urllib.request import urlretrieve

url = table["access_url"][0]
urlretrieve(url, url.split("/")[-1])
```

* **Read and plot it**

Check `access_format` first: the file format depends on the service. For a table-like file (VOTable, FITS table…), Astropy can read it directly:

```python
import matplotlib.pyplot as plt
from astropy.table import Table

spectrum = Table.read(url)
print(spectrum.colnames)                  # column names depend on the service

plt.plot(spectrum[spectrum.colnames[0]], spectrum[spectrum.colnames[1]])
plt.show()
```


## To go further

You have seen how to query VESPA data services from the most common VO clients, and display simple data products.

Associated data products may be available under datalink_url, see [here](https://github.com/epn-vespa/tutorials/blob/master/misc/datalink/DataLink.md) how to access them.

Data analysis is possible in VO tools and of course in python. Jupyter notebooks can mix python (for VO access) and other languages (for existing algorithms or even data readers).

VO tools may require special setup to adapt to Solar System data standards, see [here](https://github.com/epn-vespa/tutorials/blob/master/misc/setting_up_tools/setting_up_tools.md)



Other more specialized tools are available to support Solar System data. Some non-VO tools can exchange data via SAMP thanks to VO plugins. VO-compliant web services can also be included in access workflows.
