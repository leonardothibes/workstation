#!/bin/bash

echo " - SQLite Browser..."

LOCK=/tmp/workstation.lock.sqlitebrowser
[ -f ${LOCK} ] && return

apt-get install -y sqlitebrowser > /dev/null 2>&1
> ${LOCK}
