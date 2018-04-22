#!/bin/bash

echo " - PHP..."
CONFS=$(dirname $0)/confs

apt-get install -y php7.0          \
                   php7.0-cli      \
                   php7.0-curl     \
                   php7.0-gd       \
                   php7.0-json     \
                   php7.0-ldap     \
                   php7.0-mbstring \
                   php7.0-mcrypt   \
                   php7.0-mysql    \
                   php7.0-pgsql    \
                   php7.0-sybase   \
                   php7.0-sqlite3  \
                   php7.0-intl     \
                   php7.0-xml      \
                   php7.0-dev      \
                   php-xdebug      \
> /dev/null

cp -f ${CONFS}/php.ini /etc/php/7.0/cli
ln -sf /etc/php/7.0/cli/php.ini /etc/php.ini