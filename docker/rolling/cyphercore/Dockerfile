FROM mcr.microsoft.com/dotnet/sdk:6.0-focal
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get -y -f install libmysqlclient-dev
RUN apt-get -y -f install libreadline-dev mysql-client mysql-server
ADD build.sh /
RUN chmod 755 /build.sh
ENTRYPOINT /build.sh
