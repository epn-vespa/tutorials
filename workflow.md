## Tutorial authoring

### branches for task/topic
The previous master branch is going to be [legacy branch]().

Each task/topic based set of tutorials will be developed and updated on a topical branch as follows (based on [VESPA JRA Tasks](https://voparis-confluence.obspm.fr):

* sshade - for [Task3: sshade](https://voparis-confluence.obspm.fr/display/VES/JRA-Task+3.+SSHADE)
* surfaces - for [Task4: surfaces](https://voparis-confluence.obspm.fr/display/VES/JRA-Task+4.+Surfaces)
* magnetospheres - for [Task5: magnetospheres](https://voparis-confluence.obspm.fr/display/VES/JRA-Task+5.+Magnetospheres)
* smallbodies - for [Task6: small bodies](https://voparis-confluence.obspm.fr/display/VES/JRA-Task+6.+Small+bodies)
* atmospheres - for [Task 7: atmospheres](https://voparis-confluence.obspm.fr/display/VES/JRA-Task+7.+Atmospheres)
* exoplanetx - for [Task 8: exoplanets](https://voparis-confluence.obspm.fr/display/VES/JRA-Task+8.+Exoplanets)
* miscelaneous

### tutorial naming
Each tutorial is in a directory, optimally with strings indicating:

* topical area (e.g. ```surf```)
* body (e.g. ```mars```)
* experiment(s) (e.g. ```HRSC```)

Available prefixes include:

* sshd (sshade)
* surf (surfaces)
* magn (magnetospheres)
* smbd (small bodies)
* atmo (atmospheres)
* exop (explanets)
* misc (miscelaneous)

examples tutorial names:

* surf_mars_crism
* magn_saturn_cassini
* surf_moon_craters
* atmo_titan_vims


### Instructions
For editing a branch 

**info TBA**

The master branch / merge will be handled by JacobsUni.



## Naming of tutorial directory

The directory name of each tutorial should be easy, self-explanatotory and without space, e.g. [cassini-titan-flyby](cassini-titan-flyby)

## Creation / migration of content 

Please follow the template on [template](template) and use simple, meaningful image names without spaces in the filename.

A [sample](sample) formatted tutorial based on the existing one on the [VESPA wiki](https://voparis-confluence.obspm.fr/pages/viewpage.action?pageId=564111)

* [Embedding content](#embedding-content)
  * [Images](#images)
  * [Videos](#videos)
* [GitHub & VESPA wiki](#github--vespa-wiki)

## Update of content

Once a tutorial exists, can be updated either directly (if added to the right team, please get in touch with [@arosp](https://github.com/aprossi). Or, you could fork the repository, make your changes and create a pull request. The procedure is described in several tutorials on the internet, e.g. [GitHub's creating a pull request from a fork](https://help.github.com/articles/creating-a-pull-request-from-a-fork/).

##  Embedding content
Images embedded in a tutorial should be in the [img][template/img] subdirectory of each tutorial.

### Images
* Images should be embedde with meaningful, short names and no spaces in the filename. Format preferably PNG or JPEG. 
* If too big (larger than ~400 px) please resize embedding the full path ("download", not url of location in repo), i.e.

```html
<img src="https://raw.githubusercontent.com/epn-vespa/tutorials/master/template/img/1.png" width="400">
```
### Videos 
* Videos can be linked from YouTube/Vimeo or similar video streaming, preferably with a placeholder screenshot, e.g. as described [here](http://stackoverflow.com/questions/4279611/how-to-embed-a-video-into-github-readme-md).

## GitHub & VESPA wiki
* the working copy of each tutorial is on the [VESPA Tutorial repository](https://github.com/epn-vespa/tutorials). The README.md of each is linked on the [VESPA wiki](http://discussions.europlanet-vespa.eu/) and the level of maturity (draft, final, updated, etc.) is indicated in both the Changes log (e.g. [change log on the sample tutorial](https://github.com/epn-vespa/tutorials/tree/master/template#change-log)) and on the wiki.
