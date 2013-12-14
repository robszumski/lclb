#!/bin/bash

STATE="/tmp/last-lclb-run.state"
touch $STATE
LAST=$(cat $STATE)
CUR=$(echo $ETCD_WATCH_VALUE | md5sum | awk '{print $1}')
echo $CUR > $STATE

if [ "$CUR" != "$LAST" ]; then
  echo running lclb..
  python lclb.py
else
  echo doing nothing..
fi

