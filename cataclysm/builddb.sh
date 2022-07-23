#!/bin/bash
mkdir -p $(pwd)/../data/cataclysm/trinitycore-cata/database
docker run -ti --name trinitycore-cata-mysql -e MYSQL_ROOT_PASSWORD=root -v $(pwd)/../data/cataclysm/trinitycore-cata/database:/var/lib/mysql -v $(pwd)/trinitycore-cata/sql/create:/docker-entrypoint-initdb.d -d mysql:8.0.19