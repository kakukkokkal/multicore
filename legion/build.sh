#!/bin/bash

pushd ../docker/legion/legioncore
docker build -t build:legioncore .
popd
mkdir -p $(pwd)/../install/legioncore

docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../legion//legioncore:/source -v$(pwd)/../install/legioncore/:/install build:legioncore
