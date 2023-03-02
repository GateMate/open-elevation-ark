#!/bin/sh

../retrieve_data.sh

../create-tiles.sh ../data/USGS_13_n37w094_20230117.tif
../create-tiles.sh ../data/USGS_13_n37w095_20221102.tif
../create-tiles.sh ../data/USGS_13_n36w094_20180726.tif
../create-tiles.sh ../data/USGS_13_n36w095_20190405.tif

exec "$@"
