FROM debian:9
ARG DEBIAN_FRONTEND=noninteractive
RUN echo a
RUN apt update 
RUN apt-get -y -f  install cmake libboost*-dev ninja-build build-essential  libssl-dev g++-10
RUN apt-get -y -f install libmysqlclient-dev
RUN apt-get -y -f install libreadline-dev libbz2-dev git 
RUN apt-get -y -f install mysql-client libace*-dev
ADD build.sh /
RUN chmod 755 /build.sh
ENTRYPOINT /build.sh
