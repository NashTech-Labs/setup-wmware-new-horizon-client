#!/bin/bash

set -e

# Replace the below values
export SERVER_URL= #CHANGE_ME
export USER_NAME= #CHANGE_ME
export PASSWORD= #CHANGE_ME
export DESKTOP_NAME= #CHANGE_ME

#Please don't change it, It should be fixed
export TOKEN='${TOKEN}'

envsubst < login.sh > vhc_login.sh
chmod +x vhc_login.sh
sudo mv vhc_login.sh /usr/local/bin/

echo "Conguratulations!! now you can run the vhc_login.sh command from anywhere"

vhc_login.sh
