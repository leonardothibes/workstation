#!/bin/bash

WHO=$(id -u)
HERE=$(dirname $0)

echo ""
echo "   Terminal and programing languages"
echo ""

# Only root
if [ ${WHO} -ne 0 ]; then
	echo "Should be root!"
    echo ""
	exit 1
fi
# Only root

# The magic happens here
for DIR in $(ls ${HERE}/scripts)
do
    SCRIPT="${HERE}/scripts/${DIR}/install.sh"
    chmod 755 ${SCRIPT}
    sh ${SCRIPT}
done
# The magic happens here

echo ""
echo " Done!"
echo ""