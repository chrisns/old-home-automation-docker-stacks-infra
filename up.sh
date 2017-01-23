#!/bin/sh
docker network create --driver overlay proxy
docker stack deploy -c docker-compose.yml proxy
