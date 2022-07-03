FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive
RUN echo a
RUN apt update 
RUN apt-get -y -f  install cmake libboost*1.65-dev ninja-build build-essential  libssl-dev
RUN apt-get -y -f install libmysqlclient-dev
RUN apt-get -y -f install libreadline-dev libbz2-dev git 
RUN apt-get -y -f install libace*-dev libncurses5-dev
ADD build.sh /
RUN chmod 755 /build.sh
ENTRYPOINT /build.sh
