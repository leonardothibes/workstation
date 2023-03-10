#!/bin/bash

echo "       - WhatsApp..."

LOCK=/tmp/workstation.lock.internet.whatsapp
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub io.github.mimbrero.WhatsAppDesktop > /dev/null 2>&1

> ${LOCK}
