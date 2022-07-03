#!/bin/bash
pushd ../docker/rolling/trinitycore
docker build -t build:rolling_trinitycore .
popd
mkdir -p $(pwd)/../install/trinitycore-rolling

docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../rolling/trinitycore:/source -v$(pwd)/../install/trinitycore-rolling/:/install build:rolling_trinitycore
