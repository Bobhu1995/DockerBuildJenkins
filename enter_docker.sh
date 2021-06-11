#!/bin/bash
id=$(cat docker_id)
echo $id
docker exec -it --user root $id bash
