#!/bin/bash

echo " - PHP..."

export DEBIAN_FRONTEND=noninteractive
CONFS=$(dirname $0)/confs
BINS=$(dirname $0)/bin
VERSION=7.4

LOCK=/tmp/workstation.lock.php
[ -f ${LOCK} ] && return

# PHP
apt-get install -y software-properties-common > /dev/null 2>&1
add-apt-repository -y ppa:ondrej/php > /dev/null 2>&1
apt-get update > /dev/null 2>&1

apt-get install -y php${VERSION}          \
                   php${VERSION}-curl     \
                   php${VERSION}-gd       \
                   php${VERSION}-ldap     \
                   php${VERSION}-mbstring \
                   php${VERSION}-mysql    \
                   php${VERSION}-pgsql    \
                   php${VERSION}-sybase   \
                   php${VERSION}-sqlite3  \
                   php${VERSION}-intl     \
                   php${VERSION}-xml      \
                   php${VERSION}-dev      \
                   php${VERSION}-xdebug   \
> /dev/null 2>&1

cp -f ${CONFS}/php.ini /etc/php/${VERSION}/cli
cp -f ${CONFS}/xdebug.ini /etc/php/${VERSION}/mods-available
cp -f ${CONFS}/freetds.conf /etc/freetds/freetds.conf

ln -sf /etc/php/${VERSION}/cli/php.ini /etc/php.ini
ln -sf /usr/bin/php${VERSION} /etc/alternatives/php
# PHP

# COMPOSER
cp -f ${BINS}/composer /usr/local/bin/composer
chmod 755 /usr/local/bin/composer
# COMPOSER

# MD5
cp -f ${BINS}/md5.php /usr/local/bin/md5
chmod 755 /usr/local/bin/md5
# MD5

# SHA1
cp -f ${BINS}/sha1.php /usr/local/bin/sha1
chmod 755 /usr/local/bin/sha1
# SHA1

> ${LOCK}