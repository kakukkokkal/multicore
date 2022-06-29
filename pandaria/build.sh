#!/bin/bash
pushd ../docker/pandaria/torghast-project-5.4.8
docker build -t build:torghast .
popd
docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../pandaria//torghast-project-5.4.8:/source -v$(pwd)/../install/torghast/:/install build:torghast
