#!/bin/bash

echo " - Slack..."

LOCK=/tmp/workstation.lock.internet.slack
[ -f ${LOCK} ] && return

flatpak install -y --noninteractive flathub com.slack.Slack > /dev/null 2>&1

> ${LOCK}
