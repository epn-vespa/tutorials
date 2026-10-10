# Glossary

Short definitions of the acronyms and terms used in the VESPA tutorials. This page focuses on what the tutorials actually use, including terms specific to Solar System data.

For generic Virtual Observatory (VO) terms, see also the [IVOA glossary for astronomers](https://ivoa.net/astronomers/vo_glossary/).

**Contents:** [General](#general) · [EPN-TAP and VESPA](#epn-tap-and-vespa) · [Mains columns of an EPN-TAP table](#main-columns-of-an-epn-tap-table) · [Other formats and VO standards](#other-formats-and-vo-standards) · [Tools](#tools) 

---

## General

| Term         | Meaning                                                                                                                                                                                                                                                                        |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **VO**       | *Virtual Observatory*. A framework of common standards that lets data services and software tools from different providers work together.                                                                                                                                      |
| **IVOA**     | *International Virtual Observatory Alliance*. The organisation that defines the VO standards (TAP, ADQL, SAMP, HiPS, MOC…).                                                                                                                                                    |
| **IPDA**     | *International Planetary Data Alliance*. An alliance of space agencies' planetary data archives that works on common standards (notably PDS4) so that mission data can be searched and exchanged across archives. VESPA works with it on connecting PDS4 archives and EPN-TAP. |
| **Registry** | A directory of VO services. Tools use it to discover which services exist, where to reach them, and how to query them.                                                                                                                                                         |

## EPN-TAP and VESPA

| Term                | Meaning                                                                                                                                                                                                       |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **VESPA**           | *Virtual European Solar and Planetary Access*. The system connecting many Solar System data services; developed in the Europlanet programmes.                                                                 |
| **TAP**             | *Table Access Protocol*. The VO standard for querying tables of a remote service. Queries are written in ADQL.                                                                                                |
| **ADQL**            | *Astronomical Data Query Language*. The query language used with TAP; it is based on SQL with extensions for astronomy (e.g. spatial functions).                                                              |
| **EPN-TAP**         | *Europlanet Table Access Protocol*. An extension of TAP for Solar System data: it defines a standard table (`epn_core`) with a common set of parameters, so that the same query can be sent to many services. |
| **EPN-TAP service** | A data service that follows the EPN-TAP standard. The VESPA portal lists those validated by the VESPA team.                                                                                                   |
| **granule**         | The basic unit of data described by a service: one row of the table, typically one file (e.g., spectrum or image) or a set of values.                                                                         |
| **DaCHS**           | The recommended software  to publish EPN-TAP data services (see the tutorial on installing an EPN-TAP service).                                                                                               |

## Main columns of an EPN-TAP table

EPNCore is the standard defining the columns of an EPN-TAP service, which are used to filter data elements (granules). These are the main columns you will meet in `epn_core` tables. The complete standard is described here: https://ivoa.net/documents/EPNTAP/ 

| Column                     | Meaning                                                                                                                                                               |
| -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **`granule_uid`**          | Unique identifier of a granule within the service.                                                                                                                    |
| **`granule_gid`**          | Group identifier: groups granules of the same kind in a service (for example a given data variant). Used in some tutorials to select one variant, e.g. `'formatted'`. |
| **`dataproduct_type`**     | The kind of data product (e.g. spectrum, image…).                                                                                                                     |
| **`target_name`**          | Name of the observed body (e.g. Vesta).                                                                                                                               |
| **`access_url`**           | URL used to download the data file of the granule.                                                                                                                    |
| **`s_region`**             | Spatial footprint of the granule on the target, provided as a contour.                                                                                                |
| **`coverage`**             | Spatial footprint provided as a MOC, very efficient for spatial searches.                                                                                             |
| **`time_min`, `time_max`** | Start and end of the observation, stored as Julian Date (JD) in the raw table.                                                                                        |

## Other formats and VO standards

| Term         | Meaning                                                                                                                                                                                                                                                                                              |
| ------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **ObsCore**  | IVOA data model describing observations on the sky. EPNCore is an elaboration on ObsCore for Solar System data. ObsCore is slightly more restrictive (e.g., one `ivoa.obscore` table per server).                                                                                                    |
| **VOTable**  | The XML table format used to exchange tabular data in the VO.                                                                                                                                                                                                                                        |
| **FITS**     | *Flexible Image Transport System.* The standard file format of astronomy for images, spectra, cubes and tables. A FITS file contains one or more data blocks, each preceded by an ascii header of metadata (keywords = value).                                                                       |
| **PDS**      | *Planetary Data System*. NASA's archive of planetary mission data, and the set of standards used to describe and archive them. Two generations exist: **PDS3** (older, with text labels) and **PDS4** (current, with XML labels). PDS4 is adopted by most space agencies and maintained by the IPDA. |
| **SAMP**     | *Simple Application Messaging Protocol*. Lets VO tools running on your computer exchange data (tables, spectra, images) with a click: for example, send a table from the VESPA portal to TOPCAT.                                                                                                     |
| **DataLink** | A VO standard that gives access to the files or resources related to a granule (data, previews, associated products), but also to services (ephemeris, cutouts).                                                                                                                                     |
| **HiPS**     | *Hierarchical Progressive Survey*. A way to display large maps or surveys progressively: the more you zoom in, the more detail is loaded. Used for planetary maps in Aladin and other applications.                                                                                                  |
| **MOC**      | *Multi-Order Coverage map*. A compact description of the area covered by a data set, used for fast spatial searches.                                                                                                                                                                                 |
| **WCS**      | *World Coordinate System*. Standard defined for FITS headers that tells how pixel positions in an image map to sky or planetary-surface coordinates.                                                                                                                                                 |

## Tools

| Tool                                                       | What it is                                                                    |
| ---------------------------------------------------------- | ----------------------------------------------------------------------------- |
| **[VESPA portal](https://vespa.obspm.fr)**                 | Web interface to search all validated EPN-TAP services at once.               |
| **[TOPCAT](https://www.star.bristol.ac.uk/mbt/topcat/)**   | General-purpose table viewer and VO client, with powerful plotting functions. |
| **[Aladin](https://aladin.cds.unistra.fr/AladinDesktop/)** | Viewer for images, maps (HiPS) and footprints.                                |
| **[CASSIS](https://cassis.irap.omp.eu/)**                  | Spectrum analysis tool, connected to molecular and atomic databases.          |
| **[SPLAT-VO](https://www.g-vo.org/pmwiki/About/SPLAT)**    | Spectrum viewer able to plot many VO spectra at once.                         |
| **[TAPhandle](https://saada.unistra.fr/taphandle/)**       | Generic web interface for any TAP service.                                    |
| **[pyvo](https://pyvo.readthedocs.io/)**                   | Python library to query VO services, used with Astropy.                       |


<!-- ## Other abbreviations

| Term    | Meaning                                                         |
| ------- | --------------------------------------------------------------- |
| **TNO** | *Trans-Neptunian Object*. A small body orbiting beyond Neptune. | -->
