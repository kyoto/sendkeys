#!/bin/bash
# Send a single key press to an opened window with a given title.
# It sends the key event only if the window is found.
# Usage: sendkey.sh WINDOW-TITLE KEY
#        WINDOW-TITLE can be a regex
#        e.g. sendkey.sh 'Google Chrome' F5
title=$1
key=$2

# Get the window ID using the 'wmctrl -l' command
windowId=`wmctrl -l | awk "/$title/ {print "'$1}'`

# If we didn't find the window, then exit with an error code.
if [ ! $windowId ]; then
  exit 1
fi

# Send the one key press
xsendkey -window "$windowId" "$key"
