#!/bin/bash

echo " - PHP..."
CONFS=$(dirname $0)/confs

# PHP
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
> /dev/null 2>&1

cp -f ${CONFS}/php.ini /etc/php/7.0/cli
cp -f ${CONFS}/xdebug.ini /etc/php/7.0/mods-available

ln -sf /etc/php/7.0/cli/php.ini /etc/php.ini
# PHP

# Composer
cp -f ${CONFS}/composer-install.sh /tmp
chmod 755 /tmp/*.sh

$(cd /tmp ; ./composer-install.sh ; mv composer.phar /usr/local/bin/composer)
chmod 755 /usr/local/bin/composer

rm -f /tmp/*.sh
# Composer

# Symfony
cp -f ${CONFS}/symfony.sh /usr/local/bin/symfony
chmod 755 /usr/local/bin/symfony
# Symfony
