#!/bin/bash
pushd ../docker/rolling/trinitycore
docker build -t build:rolling_trinitycore .
popd
mkdir -p $(pwd)/../install/trinitycore-rolling
mkdir -p $(pwd)/../data/rolling/trinitycore-rolling/data

docker run -ti --rm -u $(id -u):$(id -g) \
   -v $(pwd)/../data/rolling/trinitycore-rolling/data:/data \
   -v $(pwd)/../rolling/trinitycore:/source \
   -v $(pwd)/../install/trinitycore-rolling/:/install \
   -v $(pwd)/../client/rolling/World\ of\ Warcraft/:/client \
   -v $(pwd)/doextract.sh:/doextract.sh \
   --entrypoint /doextract.sh \
   build:rolling_trinitycore 

mkdir -p $(pwd)/../install/trinitycore-rolling
mkdir -p $(pwd)/../data/rolling/cyphercore/data

docker run -ti --rm -u $(id -u):$(id -g) \
   -v $(pwd)/../data/rolling/cyphercore/data:/data \
   -v $(pwd)/../rolling/trinitycore:/source \
   -v $(pwd)/../install/trinitycore-rolling/:/install \
   -v $(pwd)/../client/rolling/World\ of\ Warcraft/:/client \
   -v $(pwd)/doextract.sh:/doextract.sh \
   --entrypoint /doextract.sh \
   build:rolling_trinitycore 