#!/bin/bash

#set -e

CONFIG_DIR=/etc/transmission-daemon
SETTINGS=$CONFIG_DIR/settings.json
TRANSMISSION=/usr/bin/transmission-daemon

if [[ ! -f ${SETTINGS}.bak ]]; then
    if [ -z $ADMIN_PASS ]; then
        echo Please provide a password for the 'transmission' user via the ADMIN_PASS enviroment variable.
        exit 1
    fi

    if [ -z $ADMIN_USER ]; then
        ADMIN_USER=transmission
    fi
    echo $ADMIN_USER
    echo $ADMIN_PASS
    sed -i -e "s/@password@/$ADMIN_PASS/" $SETTINGS
    sed -i -e "s/@username@/$ADMIN_USER/" $SETTINGS 
fi

unset TRANSMISION_ADMIN_PASS

exec $TRANSMISSION -f --no-portmap --config-dir $CONFIG_DIR --log-info 


