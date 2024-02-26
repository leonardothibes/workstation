#!/bin/bash

echo " - NoSQL Tools..."
FILES=$(dirname $0)/files

LOCK=/tmp/workstation.lock.nosql_tools
[ -f ${LOCK} ] && return

# MongoDB Compass
URL=https://downloads.mongodb.com/compass/mongodb-compass_1.40.4_amd64.deb
FILE=/tmp/mongod-compass.deb

curl -s $URL -o $FILE
dpkg -i $FILE > /dev/null 2>&1
rm -f $FILE
# MongoDB Compass

# Another Redis Desktop Manager
snap install another-redis-desktop-manager > /dev/null 2>&1

cp -f ${FILES}/rdm/redis.png                     /usr/share/pixmaps
cp -f ${FILES}/rdm/redis-desktop-manager.desktop /usr/share/applications
# Another Redis Desktop Manager

> ${LOCK}
