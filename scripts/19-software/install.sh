#!/bin/bash

echo " - Desktop software..."
CATEGORIES=$(dirname $0)/categories

# The magic happens here
for SCRIPT in $(ls ${CATEGORIES}/*.sh)
do
    chmod 755 ${SCRIPT}
    sh ${SCRIPT}
done
# The magic happens here
