#!/bin/bash

echo " - Min Browser..."

LOCK=/tmp/workstation.lock.internet.min
[ -f ${LOCK} ] && return

URL="https://objects.githubusercontent.com/github-production-release-asset-2e65be/45319761/5beb4441-4e6f-4d67-b9db-12f4cd5874af?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20240302%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240302T190223Z&X-Amz-Expires=300&X-Amz-Signature=ff766444d785e2eaf77eefd3e84b7bafc94b25eadb22f0ac1c48aa0cb0d07741&X-Amz-SignedHeaders=host&actor_id=1135830&key_id=0&repo_id=45319761&response-content-disposition=attachment%3B%20filename%3Dmin-1.31.2-amd64.deb&response-content-type=application%2Foctet-stream"
DEB=/tmp/min

[ -f $DEB ] || wget -q $URL -O $DEB
[ -f $DEB ] && dpkg -i $DEB > /dev/null 2>&1

rm -f $DEB
> ${LOCK}
