#!/bin/bash
mkdir -p $(pwd)/../data/legion/legioncore/database
docker run -ti --name legion-mysql -e MYSQL_ROOT_PASSWORD=ascent -v $(pwd)/../data/legion/legioncore/database:/var/lib/mysql -v $(pwd)/legioncore/sql/base:/docker-entrypoint-initdb.d -d mysql:8.0.19