#!/bin/bash

echo " - Filezilla..."

LOCK=/tmp/workstation.lock.internet.filezilla
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub org.filezillaproject.Filezilla > /dev/null 2>&1

> ${LOCK}
