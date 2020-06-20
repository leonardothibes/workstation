#!/bin/bash

echo " - Home skeleton configuration..."
CONFS=$(dirname $0)/confs

[ -d /etc/skel/tmp  ]                      || mkdir -p /etc/skel/tmp  && chmod 700 /etc/skel/tmp
[ -d /etc/skel/.bin ]                      || mkdir -p /etc/skel/.bin && chmod 700 /etc/skel/.bin
[ -d /etc/skel/.nvm ]                      || mkdir -p /etc/skel/.nvm && chmod 700 /etc/skel/.nvm
[ -d /etc/skel/.ssh ]                      || mkdir -p /etc/skel/.ssh && chmod 700 /etc/skel/.ssh
[ -d /etc/skel/.composer ]                 || mkdir -p /etc/skel/.composer && chmod 700 /etc/skel/.composer
[ -d /etc/skel/.local/share/nemo/actions ] || mkdir -p /etc/skel/.local/share/nemo/actions && chmod 755 /etc/skel/.local

cp -f ${CONFS}/.profile /etc/skel
cp -f ${CONFS}/.bash_logout /etc/skel
cp -f ${CONFS}/actions/* /etc/skel/.local/share/nemo/actions
rm -f /etc/skel/.bashrc /root/.bashrc

for USER in $(ls /home)
do
    HOME_FOLDER=/home/${USER}

    [ -d ${HOME_FOLDER}/tmp  ]                      || mkdir ${HOME_FOLDER}/tmp  && chown ${USER}: ${HOME_FOLDER}/tmp
    [ -d ${HOME_FOLDER}/.bin ]                      || mkdir ${HOME_FOLDER}/.bin && chown ${USER}: ${HOME_FOLDER}/.bin
    [ -d ${HOME_FOLDER}/.nvm ]                      || mkdir ${HOME_FOLDER}/.nvm && chown ${USER}: ${HOME_FOLDER}/.nvm
    [ -d ${HOME_FOLDER}/.ssh ]                      || mkdir ${HOME_FOLDER}/.ssh && chown ${USER}: ${HOME_FOLDER}/.ssh
    [ -d ${HOME_FOLDER}/.composer ]                 || mkdir ${HOME_FOLDER}/.composer && chown ${USER}: ${HOME_FOLDER}/.composer
    [ -d ${HOME_FOLDER}/.local/share/nemo/actions ] || mkdir -p ${HOME_FOLDER}/.local/share/nemo/actions && chown ${USER}: ${HOME_FOLDER}/.local

    chmod 700 ${HOME_FOLDER}/tmp
    chmod 700 ${HOME_FOLDER}/.bin
    chmod 700 ${HOME_FOLDER}/.nvm
    chmod 700 ${HOME_FOLDER}/.ssh
    chmod 755 ${HOME_FOLDER}/.local
    chmod 755 ${HOME_FOLDER}/.composer

    cp -f ${CONFS}/.profile ${HOME_FOLDER}
    cp -f ${CONFS}/.bash_logout ${HOME_FOLDER}
    cp -f ${CONFS}/actions/* ${HOME_FOLDER}/.local/share/nemo/actions
    rm -f ${HOME_FOLDER}/.bashrc
done;
