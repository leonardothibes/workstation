#!/bin/bash

echo " - Dotnet..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.dotnet
[ -f ${LOCK} ] && return

VERSION=7.0.406
URL=https://download.visualstudio.microsoft.com/download/pr/57150757-56af-450b-ba30-8532fac51e0f/507247327723f24970f66f51554c18bc/dotnet-sdk-${VERSION}-linux-x64.tar.gz
TAR=/tmp/dotnet-${VERSION}.tar.gz
DIR=/usr/local/dotnet

# Download
[ -f $TAR ] || curl -s $URL -o $TAR

# Install
[ -d "$DIR/$VERSION"        ] || mkdir -p "$DIR/$VERSION"
[ -L "$DIR/current"         ] || ln -sf "$DIR/$VERSION" "$DIR/current"
[ -f "$DIR/$VERSION/dotnet" ] || tar -zxf $TAR -C "$DIR/$VERSION"
# Install

# Path
cp -f ${CONFS}/*.sh /etc/profile.d

rm -f ${TAR}
> ${LOCK}
