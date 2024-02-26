#!/bin/bash

echo " - MongoDB Compass..."

LOCK=/tmp/workstation.lock.mongo_compass
[ -f ${LOCK} ] && return

URL=https://downloads.mongodb.com/compass/mongodb-compass_1.40.4_amd64.deb
FILE=/tmp/mongod-compass.deb

curl -s $URL -o $FILE
dpkg -i $FILE > /dev/null 2>&1
rm -f $FILE

> ${LOCK}
