#!/bin/bash

echo "       - Redis Desktop Manager..."

VERSION=1.4.2
URL="https://github-releases.githubusercontent.com/164574693/36956280-79ea-11eb-8d3e-79aa12fa319b?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210403%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210403T035629Z&X-Amz-Expires=300&X-Amz-Signature=56489f26a22fda86243d55f4fe93943756db6beffebdd698a411e8a5038d589a&X-Amz-SignedHeaders=host&actor_id=1135830&key_id=0&repo_id=164574693&response-content-disposition=attachment%3B%20filename%3DAnother-Redis-Desktop-Manager.1.4.2.AppImage&response-content-type=application%2Foctet-stream"
DIR=/usr/local/rdm

LOCK=/tmp/workstation.lock.rdm
[ -f ${LOCK} ] && return

[ -d ${DIR} ] || mkdir -p ${DIR}
curl -s ${URL} -o ${DIR}/rdm-${VERSION}.AppImage
chmod 755 ${DIR}/*

ln -sf ${DIR}/rdm-${VERSION}.AppImage ${DIR}/current
ln -sf ${DIR}/current /usr/local/bin/redis-desktop-manager

FILES=$(dirname $0)/files/rdm
cp -f ${FILES}/redis.png                     /usr/share/pixmaps
cp -f ${FILES}/redis-desktop-manager.desktop /usr/share/applications

> ${LOCK}
