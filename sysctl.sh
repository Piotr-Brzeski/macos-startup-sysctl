#!/bin/bash

if [ -f /etc/sysctl.conf ]; then
  for value in `/usr/bin/sed -e 's/[[:space:]]//g' -e 's/#.*//g' /etc/sysctl.conf`; do
    /usr/sbin/sysctl ${value}
  done
fi

exit 0
