#!/bin/bash

set -e

# RELEASE FORMAT - VMware-Horizon-Client-YYMM-y.y.y-xxxxxx.dmg
# YYMM represents the marketing version number
# y.y.y represents the internal version number
# xxxxxx represents the build number

# VERSION=YYMM-y.y.y-xxxxxx
VERSION=2103-8.2.0-17759009

wget https://download3.vmware.com/software/view/viewclients/CART22FQ1/VMware-Horizon-Client-${VERSION}.dmg

package=VMware-Horizon-Client-${VERSION}.dmg
chmod +x VMware-Horizon-Client-${VERSION}.dmg

function installdmg {
    set -x
    tempd=$(mktemp -d)
    curl $1 > $tempd/$package
    listing=$(sudo hdiutil attach $tempd/$package | grep Volumes)
    volume=$(echo "$listing" | cut -f 3)
    if [ -e "$volume"/*.app ]; then
      sudo cp -rf "$volume"/*.app /Applications
    elif [ -e "$volume"/*.pkg ]; then
      package=$(ls -1 "$volume" | grep .pkg | head -1)
      sudo installer -pkg "$volume"/"$package" -target /
    fi
    sudo hdiutil detach "$(echo "$listing" | cut -f 1)"
    rm -rf $tempd
    set +x
}

rm VMware-Horizon-Client-${VERSION}.dmg
