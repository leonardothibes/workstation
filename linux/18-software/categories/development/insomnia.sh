#!/bin/bash

echo "       - Insomnia..."

apt-get install -y libappindicator3-1 > /dev/null 2>&1
dpkg -i $(dirname $0)/files/Insomnia.Core-2021.2.2.deb > /dev/null 2>&1
