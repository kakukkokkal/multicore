#!/bin/bash
pushd ../docker/wotlk/trinitycore-wotlk
docker build -t build:wotlk_trinitycore .
popd
docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../wotlk/trinitycore-wotlk:/source -v$(pwd)/../install/trinitycore-wotlk/:/install build:wotlk_trinitycore
