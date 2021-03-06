#!/bin/bash

echo " - ZSH..."
CONFS=$(dirname $0)/confs

apt-get install -y zsh fonts-powerline > /dev/null 2>&1

rm -Rf /etc/skel/.oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git /etc/skel/.oh-my-zsh > /dev/null 2>&1

cp ${CONFS}/.zshrc /etc/skel/.zshrc
mkdir -p /etc/skel/.oh-my-zsh/cache
chmod 755 /etc/skel/.oh-my-zsh/oh-my-zsh.sh
