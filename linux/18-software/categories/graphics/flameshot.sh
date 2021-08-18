#!/bin/bash

echo "       - Flameshot..."

dpkg -i $(dirname $0)/files/flameshot.deb > /dev/null 2>&1
