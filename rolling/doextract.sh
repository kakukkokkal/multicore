#!/bin/sh
cd /client
/install/bin/mapextractor
/install/bin/vmap4extractor
/install/bin/vmap4assembler Buildings vmaps
#/install/bin/mmaps_generator
#mv mmaps /data
rm -rf Buildings
mv dbc /data
mv maps /data
mv vmaps /data