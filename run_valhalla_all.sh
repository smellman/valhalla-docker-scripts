#!/bin/sh
PBF_FILE=japan-220712.osm.pbf
cd /srv
mkdir -p valhalla_tiles
valhalla_build_config --mjolnir-tile-dir ${PWD}/valhalla_tiles --mjolnir-tile-extract ${PWD}/valhalla_tiles.tar --mjolnir-timezone ${PWD}/valhalla_tiles/timezones.sqlite --mjolnir-admin ${PWD}/valhalla_tiles/admins.sqlite > valhalla.json
valhalla_build_timezones > valhalla_tiles/timezones.sqlite
valhalla_build_tiles -c valhalla.json $PBF_FILE
valhalla_build_extract -c valhalla.json -v
find valhalla_tiles | sort -n | tar cf valhalla_tiles.tar --no-recursion -T -
