#!/bin/bash

echo "   - Internet..."

LOCK=/tmp/workstation.lock.internet
# [ -f ${LOCK} ] && return

# From repository
apt-get install -y skypeforlinux      \
                   filezilla          \
                   transmission       \
                   chromium-browser   \
                   remmina            \
                   remmina-plugin-vnc \
                   remmina-plugin-rdp \
> /dev/null 2>&1
# From repository

# From Flathub
flatpak install -y --noninteractive flathub com.github.IsmaelMartinez.teams_for_linux > /dev/null 2>&1
flatpak install -y --noninteractive flathub io.github.mimbrero.WhatsAppDesktop        > /dev/null 2>&1
flatpak install -y --noninteractive flathub com.slack.Slack                           > /dev/null 2>&1
flatpak install -y --noninteractive flathub eu.ithz.umftpd                            > /dev/null 2>&1
# From Flathub

# Other sources
echo "     - 3rd party..."

INTERNET=$(dirname $0)/internet
for SOFTWARE in $(ls ${INTERNET})
do
    chmod 755 ${INTERNET}/${SOFTWARE}
    sh ${INTERNET}/${SOFTWARE}
done
# Other sources

> ${LOCK}
