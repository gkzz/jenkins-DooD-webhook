#!/bin/bash

IDS=$(docker container ls -aq)

for i in $IDS
do
  echo "$i"
  docker container stop $i && docker container rm $i
done

IMAGES=$(docker images -aq)
for i in $IMAGES
do
  echo "$i"
  docker image rmi $i
done

docker container prune --force
docker image prune --force
docker volume prune --force

docker-compose down -v
docker-compose up -d --build