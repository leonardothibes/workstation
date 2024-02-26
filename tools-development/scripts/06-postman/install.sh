#!/bin/bash

echo " - Postman..."

LOCK=/tmp/workstation.lock.postman
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.getpostman.Postman > /dev/null 2>&1

> ${LOCK}
