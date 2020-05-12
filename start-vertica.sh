#!/bin/bash

set -e

CWD=`pwd`
DATA=$CWD/vertica_data
CID_FILE=$CWD/cid.txt
echo "Data directory: $DATA"

echo "Starting container..."
CID=`docker run -p 5433:5433 -d -v $DATA:/home/dbadmin/docker glarik/vertica:10.0.0-RHEL6`
echo

echo "Container ID: $CID"
echo "Saving container ID to $CID_FILE"
echo $CID > $CID_FILE

echo
echo "Run 'docker logs $CID' to view startup progress"
echo "Don't stop container until above command prints 'Vertica is now running'"
echo "To stop: 'docker stop $CID'"
