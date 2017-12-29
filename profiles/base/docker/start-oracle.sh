#!/usr/bin/env bash

docker rm -vf oracle-xe-11g
docker run -d -p 1521:1521 --name oracle-xe-11g vanpeerdevelopment/oracle-xe-11g
