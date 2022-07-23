#!/bin/bash
mkdir -p $(pwd)/../data/bfa/bfacore/database
docker run -ti --name bfa-mysql -e MYSQL_ROOT_PASSWORD=root -v $(pwd)/../data/bfa/bfacore/database:/var/lib/mysql -v $(pwd)/BfaCore-Reforged/sql/base:/docker-entrypoint-initdb.d -d mysql:8.0.19