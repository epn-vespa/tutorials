# Aladin & planetary surfaces

* [Authors](#authors)
* [Change log](#change-log)
* [Requirements](#requirements-and-dependencies)
* [Use case](#use-case)
* [Keywords](#keywords)
* [Summary](#summary)
* [Introduction](#introduction)
* [Steps](#steps)
* [References](#references)
* [Improvements and Notes](#Notes)
* [Links](#links)

## Authors:

S. Erard, et al.

## Change log

| Version  | Author  | Notes  |
| -------- |-------- | -----  |
| 1        | [S. Erard](https://github.com/Erard)| **draft** version  from VESPA wiki   |
| 2        |Mikhail Minin; [Keyuan Yin](https://github.com/megadiesel705)|Converted original version into markdown file|

## Requirements and dependencies
suggested: [ImageMagick](http://www.imagemagick.org/script/index.php)

## Use case
Use case by S&eacute;bastien Derri&egrave;re, CDS (June 2015), enlarged with comments and implementation notes

## Keywords
* term 1
* term 2 

## Summary
It is possible to convert planetary or satellite
to HiPS, in order to visualize them in Aladin, explore the 
surface feature, and even overlay catalogues of features.

## Introduction

This is an extension of Use Case #28 of [Aladin Beta Test page](http://aladin.u-strasbg.fr/java/Demo/AladinDemo.gml). 
Use of Aladin 8 beta version (link on that page) is required - should now also work with Aladin 9

## Steps

### Image retrieval
Retrieve image of planetary map, for example from [here](http://laps.noaa.gov/albers/sos/) 
or [here](ftp://pdsimage2.wr.usgs.gov/pub/pigpen/).

As example, work with Io on 
[ftp://pdsimage2.wr.usgs.gov/pub/pigpen/io/io_global_images.zip](ftp://pdsimage2.wr.usgs.gov/pub/pigpen/io/io_global_images.zip)

### Image conversion and load
* extract io_bjj_0dd.tif, convert to jpg (in the terminal, using ```convert``` from [ImageMagick](http://www.imagemagick.org/script/index.php) or alike

```
convert io_bjj_0dd.tif io_bjj_0dd.jpg
```

* Load image in Aladin as local file.

### Apply astrometric solution 
on menu:  
 Image > Astrometrical calibration
Central pixel 1440.0 720.0, with pix ang size 7.5' and projection CARTESIAN

### Convert to HiPS :
on menu:
Tool > Convert current image to a HiPS
Apply grid, pan around, zoom in/out ...
    > Type Comm-G to overplot coordinate grid
    > Beware that  longitudes are handled as Righ Ascensions (inverted)

### Adding catalogue:
Planetary nomenclature downloaded from [USGS](ftp://pdsimage2.wr.usgs.gov/pub/pigpen/nomenclature/nomenclature_all_feb2004.zip)

Extract nomenclature_all_feb2004.dbf
convert to csv with http://dbfconv.com/ (also GDAL could do)

Little cleanup of csv file, and load it in TOPCAT.
    > Remove EOL character <NULL> in TextMate or another handy editor


* Filter Io features only by creating subset (io, expression SA=="io")
-> 221 lines out of 8395 in io subset
    > Click on red/violet icon, add a filter
    & "plot subset" io in main window

Choose io Row subset in main TOPCAT window and broadcast to Aladin via SAMP

* Right-click catalogue plane in Aladin, Column Information
Click on Coord for LATITUDE and LONG360, pretending they are DEC and RA, respectively.

* Create dedicated filter :
In advanced mode, use the following expression :
    > this is Catalogue menu item / create new filter / advanced mode
    
```
{
# scale is 113.3 arcsec/km
draw ellipse(113.3*${DIAM}, 113.3*${DIAM}, 0) rainbow(${AD},1979,2003)
draw ${NAME} rainbow(${AD},1979,2003)
}
```

Displays names and sizes of surface features, color-coded by year of discovery.

* Remaining issues :
Defaut orientation of RA or longitudes in Aladin is different
from the one used in planetary science, therefore the surface
is viewed as from within the planetary body, not from outside.

### Resulting image on Aladin

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Aladin-Planetary-Surfaces/img/aladin.png" width="500">

### Extension of use case to Mars

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/Aladin-Planetary-Surfaces/img/Mars.jpg" width="500">

* Using Mars IRTM albedo (Viking): 
* with imagemagick ```convert alb_.09.tif alb_.09.jpg```

```
resolution = 1°/pixel
size= 2 * pi * R / nb pix = pi * 3390. *2 / 360. = 59.2'
Can be enlarged to 60' ?   
```



## References

Please refer this tutorial to [original site](https://voparis-confluence.obspm.fr/pages/viewpage.action?pageId=564111)  

<h2 id="Notes">Improvements and Notes</h2>
1. "Save image" does not include the projected image (only the sphere frame)!  
2. [Application by Mikhail Minin with Aladin Lite](http://epn1.epn-vespa.jacobs-university.de:8080/MARS/)   
3. Messages from Pierre Fernique:  
&ensp;&ensp;&ensp;&ensp;1) put one or several images of the planet (jpg or png) in a folder  
&ensp;&ensp;&ensp;&ensp;2) for each file, you will associate a xxx.hhh calibration file (same prefix name but .hhh extension). These calibration files will contain the WCS header(\*)  
&ensp;&ensp;&ensp;&ensp;3) use Aladin/Hipsgen with this syntax: java -jar Aladin.jar -hipsgen in=yourFolder color=true  
&ensp;&ensp;&ensp;&ensp;4) your HiPS will be generated in yourFolderHiPS directory that you can load directly in Aladin, and/or publish on your apache HTTP server.
With this method, your will be able to create and publish deep HiPS (at any resolution) rather that just a low resolution planet map. Notice that you can already display your HiPS in various projections (SINUS, AITOFF, MOLLWEIDE, AITOFF, CAR, ...) via the Propertie button in Aladin.
I will keep you inform of our progress in the Aladin code (inversion of longitude, ellipsoide projection...). Do not hesitate to signal the various problem that you see (\*) The WCS header is presently sky oriented and you will have to adapt WCS to your image collection. For instance, if you take this unique image http://i.stack.imgur.com/ojwD8.jpg (the earth in cartesian projection), you may use this following calibration file  
ojwD8.hhh:  
```
NAXIS1  = 2048  
NAXIS2  = 1024  
CRPIX1  = 1024.0  
CRPIX2  = 512.0  
EQUINOX = 2000.0  
CRVAL1  = 0.0  
CRVAL2  = 0.0  
CTYPE1  = RA---CAR  
CTYPE2  = DEC--CAR  
RADECSYS= FK5  
CD1_1   = -0.185546875  
CD1_2   = -0.0  
```
**Somehow the result image is forbidden from visiting, and it may need further contact with author Pierre Fernique**

## Links
e.g. to working mybinder version where relevant, repos, jupyter notebooks, desktop tools/plugins or alike.
