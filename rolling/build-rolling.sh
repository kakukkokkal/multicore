docker run -ti --rm -u $(id -u):$(id -g) -v $(pwd)/../rolling/trinitycore:/source -v$(pwd)/../install/trinitycore-rolling/:/install build:rolling_trinitycore
