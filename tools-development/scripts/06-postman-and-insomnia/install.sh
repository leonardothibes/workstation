#!/bin/bash

echo " - Postman and Insomnia..."

LOCK=/tmp/workstation.lock.postman_and_insomnia
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.getpostman.Postman > /dev/null 2>&1
flatpak install -y --noninteractive flathub rest.insomnia.Insomnia > /dev/null 2>&1

> ${LOCK}
