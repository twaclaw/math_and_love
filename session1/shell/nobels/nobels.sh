#!/bin/bash

wget -np 'https://public.opendatasoft.com/api/explore/v2.1/catalog/datasets/nobel-prize-laureates/exports/csv?lang=en&timezone=Europe%2FBerlin&use_labels=true&delimiter=%3B' -O nobels_raw.csv
cut -d';' -f1-19 nobels_raw.csv > nobels.csv

# TODO: play around
# TODO: nobel prices in physics
# TODO: count number of nobel prices per category
exit 0