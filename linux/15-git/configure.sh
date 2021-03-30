#!/bin/bash

echo " - GIT..."
CONFS=$(dirname $0)/confs

apt-get install -y git git-flow > /dev/null 2>&1
