#!/bin/bash
pushd ../docker/wotlk/trinitycore-wotlk
docker build -t build:wotlk_trinitycore .
popd
mkdir -p $(pwd)/../install/trinitycore-wotlk

docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../wotlk/trinitycore-wotlk:/source -v$(pwd)/../install/trinitycore-wotlk/:/install build:wotlk_trinitycore
