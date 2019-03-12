#!/bin/bash

echo " - PHP..."

CONFS=$(dirname $0)/confs
BINS=$(dirname $0)/bin

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
cp -f ${CONFS}/freetds.conf /etc/freetds/freetds.conf

ln -sf /etc/php/7.0/cli/php.ini /etc/php.ini
# PHP

# Composer
cp -f ${CONFS}/composer-install.sh /tmp
chmod 755 /tmp/*.sh

$(cd /tmp ; ./composer-install.sh ; mv composer.phar /usr/local/bin/composer)
chmod 755 /usr/local/bin/composer

rm -f /tmp/*.sh

for USER in $(ls /home)
do
    chown -R ${USER}: /home/${USER}/.composer
done
# Composer

# Symfony
cp -f ${CONFS}/symfony.sh /usr/local/bin/symfony
cp -f ${CONFS}/symfony-mini.sh /usr/local/bin/symfony-mini
chmod 755 /usr/local/bin/*
# Symfony

# MD5
cp -f ${BINS}/md5.php /usr/local/bin/md5
chmod 755 /usr/local/bin/md5
# MD5

# SHA1
cp -f ${BINS}/sha1.php /usr/local/bin/sha1
chmod 755 /usr/local/bin/sha1
# SHA1
