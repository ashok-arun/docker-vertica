#!/bin/bash

set -e

# get container ID of vertica docker container
CID=`cat ./cid.txt`

# open bash in the container
docker exec -it --user dbadmin $CID /bin/bash
