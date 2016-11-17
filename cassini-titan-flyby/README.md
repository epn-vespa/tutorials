## Cassini T117 Titan Fly by

* [Authors](#authors)
* [Change log](#change-log)
* [Requirements](#requirements-and-dependencies)
* [Use case](#use-case)
* [Keywords](#keywords)
* [Summary](#summary)
* [Introduction](#introduction)
* [Steps](#steps)
* [References](#references)
* [Links](#links)

## Authors:

V. Génot et al.

## Change log

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 1             | Gangloff      |    |


## Requirements and dependencies
 Not applicable

## Use case
Search and display data around a Titan fly-by with VESPA

## Keywords
* 3DView
* TopCat

## Summary
For this use case, we use 3DView and another tool called TopCat to display data searched by 3DView among VESPA services.
We want to search for data provided by VESPA around a Titan flyby by the CASSINI spacecraft

## Introduction

The Titan fly by is described below (source PDS):


![0](https://raw.githubusercontent.com/epn-vespa/tutorials/master/cassini-titan-flyby/img/T117atPDS.png)

## Steps

### First step
Start 3Dview : goto http://3dview.cdpp.eu and click on the **Launch 3DView** button, save the file as launch3dview.jnlp and run the application

![1](https://raw.githubusercontent.com/epn-vespa/tutorials/master/cassini-titan-flyby/img/3DviewLaunchPage.png)

### Next step
In the desktop bar, select “File/New" to open a new 3D scene

![2](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/open3Dscene.png)

### Next step
With the File/Manage scene menu,create a scene with Titan as central body, CASSINI as spacecraft and TIIS as coordinate system
from 2016-02-16T21:00:00 to 2016-02-17T03:00:00

![3](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/manageScene.png)

### Next step
Select the VESPA option in the Science Menu

![4](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/sciencemenu.png)

This opens the VESPA pop-up window,with Target,StartTime and StopTime already selected from the scene.

![5](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/EPNTAPWindow.png)

### Next step
Launch the animation and stop it at about 23:16,and click on the Select Region button to add a new search keyword.

![6](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/launchAnimation.png)

![7](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/time.png)

## Next step
click on the Select Region button to add a new search keyword. The following pop-up window is opened.

![8](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/selectRegion1.png)

## Next step
Then select a region 

![9](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/selectRegion2.png)

## Next step
To increase the number of possible responses, change the start date to
2010-02-16T21:00:00  and click on Search

The list of services is displayed in the left part of the window. The name of each service is displayed with the corresponding
number of results.

![10](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/ListOfServices.png)

## Next step
Click on titan to display the results of this database.

![10](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/titanResults.png)

## Next step
Launch TopCat. This will automatically start the SAMP HUB hosted by TopCat.Right click on a raw displays several options
depending on the data format.Select send via SAMP to TopCat.
This option is available for data of mime type equal to application/x-votable+xml only.

![11](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/sendToTopCat.png)

## Next step

The table is loaded by TopCat, and visible in the Table List after a few seconds. Open the plane plotting window to display the contents of the table.

![12](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/topcatView.png)

## Next step

In the plane plot window, Select temperature on X-axis and altitude on Y-axis.

![13](https://github.com/epn-vespa/tutorials/blob/master/cassini-titan-flyby/img/planePlotting.png)


