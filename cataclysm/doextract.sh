#!/bin/sh
cd /client
/install/bin/connection_patcher Wow.exe
/install/bin/mapextractor
/install/bin/vmap4extractor
/install/bin/vmap4assembler Buildings vmaps
/install/bin/mmaps_generator
rm -rf Buildings
mv dbc /data
mv maps /data
mv mmaps /data
mv vmaps /data