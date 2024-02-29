#!/bin/bash

echo " - HTTP Tools..."

LOCK=/tmp/workstation.lock.http_tools
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.getpostman.Postman > /dev/null 2>&1
flatpak install -y --noninteractive flathub rest.insomnia.Insomnia > /dev/null 2>&1

> ${LOCK}
