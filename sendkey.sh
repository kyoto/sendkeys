#!/bin/bash
#Send a single key press to an open window with a given window title
#Usage: sendkey.sh WINDOW-TITLE KEY
#       WINDOW-TITLE can be a regex
#       e.g. sendkey.sh 'Google Chrome' F5
title=$1
key=$2

windowId=`wmctrl -l | awk "/$title/ {print "'$1}'`
xsendkey -window "$windowId" "$key"
