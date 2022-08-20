#!/bin/bash
pushd ../docker/rolling/trinitycore
docker build -t build:rolling_trinitycore .
popd
mkdir -p $(pwd)/../install/trinitycore-rolling

docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../rolling/trinitycore:/source -v$(pwd)/../install/trinitycore-rolling/:/install build:rolling_trinitycore

pushd ../docker/rolling/cyphercore
docker build -t build:rolling_cyphercore .
popd
mkdir -p $(pwd)/../install/cyphercore

docker run -ti --rm -e HOME=/source -u $(id -u):$(id -g) -v $(pwd)/../rolling/cyphercore:/source -v$(pwd)/../install/cyphercore/:/install build:rolling_cyphercore
