#!/bin/bash

mkdir -p /usr/local/bin || exit 1
cp sysctl.sh /usr/local/bin/sysctl.sh || exit 1
cat sysctl.conf >> /etc/sysctl.conf || exit 1
cp net.brzeski.macos.startup.sysctl.plist /Library/LaunchDaemons/net.brzeski.macos.startup.sysctl.plist || exit 1

echo Installed.
exit 0
