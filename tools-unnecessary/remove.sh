#!/bin/bash

WHO=$(id -u)
HERE=$(dirname $0)

# Only root
if [ ${WHO} -ne 0 ]; then
    echo ""
	echo " Should be root!"
    echo ""
	exit 1
fi
# Only root

echo ""
echo "   Removing unnecessary softwre"
echo "   ----------------------------"
echo ""

# The magic happens here
for DIR in $(ls ${HERE}/scripts)
do
    SCRIPT="${HERE}/scripts/${DIR}/remove.sh"
    chmod 755 ${SCRIPT}
    sh ${SCRIPT}
done
# The magic happens here

echo ""
echo "   Done!"
