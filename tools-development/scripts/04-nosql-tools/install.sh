#!/bin/bash

echo " - NoSQL Tools..."

LOCK=/tmp/workstation.lock.nosql_tools
[ -f ${LOCK} ] && return

# MongoDB Compass
URL=https://downloads.mongodb.com/compass/mongodb-compass_1.40.4_amd64.deb
FILE=/tmp/mongod-compass.deb

curl -s $URL -o $FILE
dpkg -i $FILE > /dev/null 2>&1
rm -f $FILE
# MongoDB Compass

flatpak install -y --noninteractive flathub com.redis.RedisInsight > /dev/null 2>&1

> ${LOCK}
