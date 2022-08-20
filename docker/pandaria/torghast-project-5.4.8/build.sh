#!/bin/bash
mkdir -p /source/build
cd /source/build 
cmake -DCMAKE_INSTALL_PREFIX=/install -DACE_EXPECTED_VERSION=6.4.5 -DCMAKE_BUILD_TYPE=Release -DTOOLS=1 -DSCRIPTS=1 ..
cmake -DCMAKE_INSTALL_PREFIX=/install -DACE_EXPECTED_VERSION=6.4.5 -DCMAKE_BUILD_TYPE=Release -DSERVERS=1 ..
make -j8 all
make -j1 install