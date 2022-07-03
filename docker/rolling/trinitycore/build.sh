#!/bin/bash
mkdir -p /source/build
cd /source/build 
cmake -DCMAKE_INSTALL_PREFIX=/install -DCMAKE_BUILD_TYPE=Release -DTOOLS=1 ..
make -j8 
make -j8 install