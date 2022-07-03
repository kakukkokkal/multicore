FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get -y -f  install cmake ninja-build build-essential libboost*71-dev  libssl-dev
RUN apt-get -y -f install libmysqlclient-dev
RUN apt-get -y -f install libreadline-dev libbz2-dev git libace*-dev
ADD build.sh /
RUN chmod 755 /build.sh
ENTRYPOINT /build.sh
