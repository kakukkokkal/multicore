#!/bin/bash
pushd ../docker/cataclysm/trinitycore-cata
docker build -t build:cataclysm_trinitycore .
popd
mkdir -p $(pwd)/../data/cataclysm/trinitycore-cata/data

docker run -ti --rm -u $(id -u):$(id -g) \
   -v $(pwd)/../data/cataclysm/trinitycore-cata/data:/data \
   -v $(pwd)/../cataclysm/trinitycore-cata:/source \
   -v $(pwd)/../install/trinitycore-cata/:/install \
   -v $(pwd)/../client/4.3.4/:/client \
   -v $(pwd)/doextract.sh:/doextract.sh \
   --entrypoint /doextract.sh \
   build:cataclysm_trinitycore 