#!/bin/bash
docker_lst=$(docker ps -f name=jenkins- -a -q)
echo "clear container $docker_lst"

echo "stop..."
docker stop $docker_lst

echo "rm ..."
docker rm $docker_lst

echo "rm docker network..."
network_id_lst=$(docker network ls |grep jenkins |awk '{print $1}')
echo "clear network $network_id_lst"

docker network rm $network_id_lst

echo "clear finish"
