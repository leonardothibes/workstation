#!/bin/bash

echo "       - Azure Data Studio..."

URL="https://sqlopsbuilds.azureedge.net/stable/765c7064d46253d88393e0e1ff78874b6fe8fa64/azuredatastudio-linux-1.27.0.deb"
TMP=/tmp

apt-get install -y libxss1      \
                   libgconf-2-4 \
                   libunwind8   \
> /dev/null 2>&1

curl -s ${URL} -o ${TMP}/azurestudio.deb
dpkg -i ${TMP}/azurestudio.deb > /dev/null 2>&1
rm -f ${TMP}/azurestudio.deb
