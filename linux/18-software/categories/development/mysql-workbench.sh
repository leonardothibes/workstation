#!/bin/bash

echo "       - MySQL Workbench..."

apt-get install -y libzip5 > /dev/null 2>&1
dpkg -i $(dirname $0)/files/mysql-workbench-community_8.0.23-1ubuntu20.04_amd64.deb > /dev/null 2>&1
