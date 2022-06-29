#!/bin/bash
pushd ../docker/cataclysm/trinitycore-cata
docker build -t build:cataclysm_trinitycore .
popd
docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../cataclysm/trinitycore-cata:/source -v$(pwd)/../install/trinitycore-cata/:/install build:cataclysm_trinitycore
