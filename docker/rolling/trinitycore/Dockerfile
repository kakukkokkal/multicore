FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get -y -f  install cmake libboost-dev ninja-build build-essential libboost*-dev  libssl-dev
RUN apt-get -y -f install libmysqlclient-dev
RUN apt-get -y -f install libreadline-dev mysql-client mysql-server
ADD build.sh /
RUN chmod 755 /build.sh
ENTRYPOINT /build.sh
