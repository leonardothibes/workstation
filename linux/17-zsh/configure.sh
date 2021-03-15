#!/bin/bash

echo " - ZSH..."
CONFS=$(dirname $0)/confs

apt-get install -y zsh > /dev/null 2>&1
