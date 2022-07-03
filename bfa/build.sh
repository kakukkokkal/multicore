#!/bin/bash
pushd ../docker/bfa/BfaCore
docker build -t build:bfacore .
popd
mkdir -p $(pwd)/../install/bfacore
docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../bfa/BfaCore-Reforged:/source -v$(pwd)/../install/bfacore/:/install build:bfacore
