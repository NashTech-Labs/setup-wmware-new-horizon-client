#!/bin/bash

echo "Enter the token for authentication: "  
read TOKEN

vmware-view \
	--serverURL=${SERVER_URL} \
	--userName=${USER_NAME} \
	--password=${PASSWORD} \
	--tokenUserName=${USER_NAME} \
	--passcode=${TOKEN} \
	--domainName=USCORP \
	--applicationName="VMware Horizon Client" \
	--desktopName="${DESKTOP_NAME}" \
	--nonInteractive &
