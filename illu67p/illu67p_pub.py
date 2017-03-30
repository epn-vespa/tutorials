#!/usr/bin/env python
# -*- coding: utf-8 -*-

from gavo.grammars.customgrammar import CustomRowIterator
import urllib

SUBSOLAR_LONGITUDES = range(0, 359)
SUBSOLAR_LATITUDES = range(-52, 52)

BASE_URL = 'http://cdpp2.irap.omp.eu/data/illu67p/'
RAW_URL = BASE_URL + 'raws/raw-%s.txt'
PREVIEW_URL = BASE_URL + 'previews/preview-%s.jpg'
IMAGE_URL = BASE_URL + 'images/image-%s.jpg'

class RowIterator(CustomRowIterator):

	def _iterRows(self):
		def get_size(url):
			return int(urllib.urlopen(url).info().getheaders("Content-Length")[0])

		for subs_lon in SUBSOLAR_LONGITUDES:
			for subs_lat in SUBSOLAR_LATITUDES:

				rec = {
					'shortName': '%03d-%03d' % (subs_lon, 90-subs_lat),
					'subsLon': subs_lon,
					'subsLat': subs_lat,
				}

				# We don't get size every raw to process faster
				raw_size = get_size(RAW_URL % rec['shortName']) if ( (subs_lon*subs_lat)%1000 == 0 or not raw_size ) else raw_size
				preview_size = get_size(PREVIEW_URL % rec['shortName']) if ( (subs_lon*subs_lat)%1000 == 0 or not preview_size ) else preview_size
				image_size = get_size(IMAGE_URL % rec['shortName']) if ( (subs_lon*subs_lat)%1000 == 0 or not image_size ) else image_size

				# Raw
				rec.update({
					'type': 'raw',
					'url': RAW_URL % rec['shortName'],
					'size': raw_size,
					'dataType': 'catalogue',
					'mime': 'text/plain'
				})
				yield rec

				# Preview
				rec.update({
					'type': 'raw',
					'url': PREVIEW_URL % rec['shortName'],
					'size': preview_size,
					'dataType': 'image',
					'mime': 'image/jpg'
				})
				yield rec

				# Image
				rec.update({
					'type': 'raw',
					'url': IMAGE_URL % rec['shortName'],
					'size': image_size,
					'dataType': 'map',
					'mime': 'image/jpg'
				})
				yield rec
