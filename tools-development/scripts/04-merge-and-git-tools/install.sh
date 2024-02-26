#!/bin/bash

echo " - Merge and GIT Tools..."

LOCK=/tmp/workstation.lock.merge_and_git_tools
[ -f ${LOCK} ] && return

apt-get install -y gitg meld                                          > /dev/null 2>&1
flatpak install -y --noninteractive flathub io.github.shiftey.Desktop > /dev/null 2>&1

> ${LOCK}
