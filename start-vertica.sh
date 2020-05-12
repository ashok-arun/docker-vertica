#!/bin/bash

CWD=`pwd`
DATA=$CWD/vertica_data
CID_FILE=$CWD/cid.txt
echo "Data directory: $DATA"

echo "Starting container..."
CID=`docker run -p 5433:5433 -d -v $DATA:/home/dbadmin/docker glarik/vertica:10.0.0-RHEL6`

echo "Container ID: $CID"
echo

echo "Saving container ID to $CID_FILE"
echo $CID > $CID_FILE
