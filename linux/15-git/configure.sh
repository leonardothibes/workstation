#!/bin/bash

echo " - GIT..."
CONFS=$(dirname $0)/confs

apt-get install -y git > /dev/null 2>&1
