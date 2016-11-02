
## Creation / migration of content 

Please follow the template on [template](template) and use simple, meaningful image names without spaces in the filename.

A [sample](sample) formatted tutorial based on the existing one on the [VESPA wiki](https://voparis-confluence.obspm.fr/pages/viewpage.action?pageId=564111)

* [Embedding content](#Embedding-content)
  * [Images](#Images)
  * [Videos](#Videos)

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
