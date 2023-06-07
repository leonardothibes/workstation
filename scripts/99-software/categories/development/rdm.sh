#!/bin/bash

echo "       - Redis Desktop Manager..."

VERSION=1.5.9
DIR=/usr/local/rdm
FILES=$(dirname $0)/files/rdm

[ -d ${DIR} ] || mkdir -p ${DIR}
cp -f ${FILES}/Another-Redis-Desktop-Manager.${VERSION}.AppImage ${DIR}/rdm-${VERSION}.AppImage
chmod 755 ${DIR}/*

ln -sf ${DIR}/rdm-${VERSION}.AppImage ${DIR}/current
ln -sf ${DIR}/current /usr/local/bin/redis-desktop-manager

cp -f ${FILES}/redis.png                     /usr/share/pixmaps
cp -f ${FILES}/redis-desktop-manager.desktop /usr/share/applications
