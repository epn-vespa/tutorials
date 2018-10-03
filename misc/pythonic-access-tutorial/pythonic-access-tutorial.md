## Connecting to EPN-TAP services from python

[Authors](#Authors)

[Change Log](#Change Log)

[Introduction](#Introduction)

[Requisites](#Requisites)

[Searching for services](#Searching for services)

[Searching in a service](#Searching in a service)

## Authors

- Baptiste Cecconi (Obs. Paris)

## Change Log

|Version|Name|Note|
|---|---|---|
|1|[Baptiste Cecconi](https://github.com/BaptisteCecconi)|Initial Release|

## Introduction
This tutorial gives examples of queries for exploring EPN-TAP services from a python command line interface.

## Requisites

This tutorial requires Python 2.7.9 (or higher), as well as the [gavoutils](http://soft.g-vo.org/dist/gavoutils-latest.tar.gz) module.  

## Searching for services

```python
from gavo import votable
query = "SELECT DISTINCT short_name, res_title, ivoid, access_url, table_name, content_type, res_description, creator_seq, content_level, reference_url, created, updated, detail_value 
FROM rr.resource NATURAL JOIN rr.res_schema NATURAL JOIN rr.res_table NATURAL JOIN rr.interface NATURAL JOIN rr.res_detail NATURAL JOIN rr.capability 
WHERE standard_id='ivo://ivoa.net/std/tap' AND intf_type='vs:paramhttp' AND detail_xpath='/capability/dataModel/@ivo-id' 
AND 1=ivo_nocasematch(detail_value, 'ivo://vopdc.obspm/std/EpnCore%2.0') AND table_name LIKE '%.epn_core' 
ORDER BY short_name, table_name"

job = votable.tapquery.ADQLTAPJob("http://registry.euro-vo.org/regtap/tap",query)
job.run()
data, meta = votable.load(job.openResult())
```


## Searching in a service

```python
from gavo import votable
job = votable.tapquery.ADQLTAPJob("http://vogate.obs-nancay.fr/tap",query="select access_url from nda.epn_core where access_url LIKE '%.cdf'")
job.run()
data, meta = votable.load(job.openResult())
```
