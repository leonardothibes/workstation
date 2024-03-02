#!/bin/bash

echo " - Dropbox..."

LOCK=/tmp/workstation.lock.internet.dropbox
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.dropbox.Client > /dev/null 2>&1

> ${LOCK}
