#!/bin/bash

set -e

# RELEASE FORMAT - VMware-Horizon-Client-YYMM-x.x.x-yyyyyyy.arch.bundle
# YYMM represents the marketing version number
# x.x.x represents the internal version number
# yyyyyyy represents the build number

# VERSION=YYMM-x.x.x-yyyyyyy
VERSION=2103-8.2.0-17742757

wget https://download3.vmware.com/software/view/viewclients/CART22FQ1/VMware-Horizon-Client-${VERSION}.x64.bundle

chmod +x VMware-Horizon-Client-${VERSION}.x64.bundle

sudo env TERM=dumb VMWARE_EULAS_AGREED=yes \
./VMware-Horizon-Client-${VERSION}.x64.bundle --console --required

rm VMware-Horizon-Client-${VERSION}.x64.bundle
