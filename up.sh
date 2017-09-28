#!/bin/sh
docker network create --driver overlay proxy
echo "foo" | docker secret create cert-combined.pem -
docker stack deploy -c docker-compose.yml proxy
