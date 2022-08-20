FROM mcr.microsoft.com/dotnet/sdk:3.1-focal
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get -y -f  install cmake libboost-dev ninja-build build-essential libboost*71-dev  libssl-dev
RUN apt-get -y -f install libmysqlclient-dev
RUN apt-get -y -f install mysql-client libreadline-dev libbz2-dev mono-runtime libmono-system-core4.0-cil
ADD build.sh /
RUN chmod 755 /build.sh
ENTRYPOINT /build.sh
