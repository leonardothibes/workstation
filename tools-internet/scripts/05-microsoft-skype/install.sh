#!/bin/bash

echo " - Microsoft Skype..."

LOCK=/tmp/workstation.lock.internet.skype
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.skype.Client > /dev/null 2>&1

> ${LOCK}
