#!/bin/bash

echo " - Vim..."
CONFS=$(dirname $0)/confs

LOCK=/tmp/workstation.lock.vim
[ -f ${LOCK} ] && return

apt-get install -y vim > /dev/null
cp -f ${CONFS}/vimrc /etc/vim
chmod 644 /etc/vim/vimrc

> ${LOCK}
