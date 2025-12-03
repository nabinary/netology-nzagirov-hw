#!/bin/bash

RSYNC="/usr/bin/rsync"
OPTIONS="-a --delete"
SRC="/home/cniipz/"
DST="/tmp/backup/"

$RSYNC $OPTIONS $SRC $DST

ecode=$?

if [ $ecode -eq 0 ]; then
	logger -t "RSYNC_SUCCESS" "rsync backup from $SRC to $DST success completed."
else
	logger -p user.err -t "RSYNC_FAIL" "rsync backup error. Code: $ecode"
fi

