#!/bin/bash

echo " - PHP..."

export DEBIAN_FRONTEND=noninteractive
CONFS=$(dirname $0)/confs
BINS=$(dirname $0)/bin

LOCK=/tmp/workstation.lock.php
[ -f ${LOCK} ] && return

# PHP
PHP_VERSION=8.1
apt-get install -y software-properties-common > /dev/null 2>&1
apt-get install -y php${PHP_VERSION}          \
                   php${PHP_VERSION}-curl     \
                   php${PHP_VERSION}-gd       \
                   php${PHP_VERSION}-ldap     \
                   php${PHP_VERSION}-mbstring \
                   php${PHP_VERSION}-mysql    \
                   php${PHP_VERSION}-pgsql    \
                   php${PHP_VERSION}-sybase   \
                   php${PHP_VERSION}-sqlite3  \
                   php${PHP_VERSION}-intl     \
                   php${PHP_VERSION}-xml      \
                   php${PHP_VERSION}-dev      \
                   php${PHP_VERSION}-xdebug   \
> /dev/null 2>&1

cp -f ${CONFS}/php.ini /etc/php/${PHP_VERSION}/cli
cp -f ${CONFS}/xdebug.ini /etc/php/${PHP_VERSION}/mods-available
cp -f ${CONFS}/freetds.conf /etc/freetds/freetds.conf

ln -sf /etc/php/${PHP_VERSION}/cli/php.ini /etc/php.ini
ln -sf /usr/bin/php${PHP_VERSION} /etc/alternatives/php
# PHP

# COMPOSER
COMPOSER_VERSION=2.7.1
curl -s https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar -o /usr/local/bin/composer
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
