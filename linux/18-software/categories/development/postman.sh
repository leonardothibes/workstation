#!/bin/bash

echo "       - Postman..."

DIR=$(dirname $0)/files/postman
ln -sf /usr/local/postman/Postman /usr/local/bin/postman
cp -f ${DIR}/postman.png          /usr/share/pixmaps
cp -f ${DIR}/postman.desktop      /usr/share/applications
