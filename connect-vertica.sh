#!/bin/bash

# get container ID of vertica docker container
#TODO this assumes the user has only 1 Docker container running
#CID=`docker ps | tail -1 | cut -d' ' -f1`
CID=`cat ./cid.txt`

# open bash in the container
docker exec -it --user dbadmin $CID /bin/bash
