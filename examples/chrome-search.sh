#!/bin/bash
# For each line from STDIN, do a web search in a new Google Chrome tab using Chrome's Omnibox
# Assumes that a Chrome browser window is already open
title='Chrome'
while read line; do
  sendkey.sh "$title" 'Control+t'
  sendkey.sh "$title" 'Control+l'
  sendkeys.sh "$title" "$line"
  sendkey.sh "$title" 'Return'
done
