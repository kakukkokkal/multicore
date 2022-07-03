#!/bin/bash
pushd ../docker/pandaria/torghast-project-5.4.8
docker build -t build:torghast .
popd
pushd ../docker/pandaria/SkyFire_548
docker build -t build:SkyFire_548 .
popd
mkdir -p $(pwd)/../install/torghast
mkdir -p $(pwd)/../install/skyfire

docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../pandaria//torghast-project-5.4.8:/source -v$(pwd)/../install/torghast/:/install build:torghast
docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../pandaria//SkyFire_548:/source -v$(pwd)/../install/skyfire/:/install build:SkyFire_548
