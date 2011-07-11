#!/bin/bash
#Send a series of key presses to an open window with a given window title
#Usage: sendkeys.sh WINDOW-TITLE KEY
#       WINDOW-TITLE can be a regex
#       e.g. sendkeys.sh 'Terminal' "start-server.sh"
title=$1
keys=$2

for i in $(seq 0 $((${#keys} - 1))); do
  key=${keys:$i:1}
  windowId=`wmctrl -l | awk "/$title/ {print "'$1}'`

  #Handle special chars
  #TODO: What other chars should be handled here? What's a more generic way of doing this?
  if [ "$key" == "." ]; then
    key="period"
  elif [ "$key" == "," ]; then
    key="comma"
  elif [ "$key" == "'" ]; then
    key="apostrophe"
  elif [ "$key" == "/" ]; then
    key="slash"
  elif [ "$key" == " " ]; then
    key="space"
  fi
  xsendkey -window "$windowId" "$key"
done

