#!/bin/bash

GROUP=ncoadmin
USER=netcool

PKGDIR=/opt/viasat/agents/linux
SILENT_FILE=$PKGDIR/APMADV_silent_install.txt
PGKINST=$PKGDIR/installAPMAgents.sh

export SKIP_PRECHECK=1

#run installer as root
$PGKINST -p $SILENT_FILE > /dev/null

install /opt/viasat/agents/linux/ITMAgents1 /etc/init.d/
