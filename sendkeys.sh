#!/bin/bash
# Send a series of key presses to an open window with a given window title
# It only sends the key events if it found the window.
# Usage: sendkeys.sh WINDOW-TITLE KEY
#        WINDOW-TITLE can be a regex
#        e.g. sendkeys.sh 'Terminal' 'start-server.sh'
title=$1
keys=$2

# Get the window ID using the 'wmctrl -l' command
windowId=`wmctrl -l | awk "/$title/ {print "'$1}'`

# If we didn't find the window, then exit with an error code.
if [ ! $windowId ]; then
  exit 1
fi

# Send one character at a time
for i in $(seq 0 $((${#keys} - 1))); do
  key=${keys:$i:1}

  # Chars that we can't pass straight through to xsendkey
  # This list taken from X11/keysymdef.h
  case "$key" in
    ' '  ) key='space'             ;;
    '!'  ) key='Shift+exclam'      ;;
    '"'  ) key='Shift+quotedbl'    ;;
    '#'  ) key='Shift+numbersign'  ;;
    '$'  ) key='Shift+dollar'      ;;
    '%'  ) key='Shift+percent'     ;;
    '&'  ) key='Shift+ampersand'   ;;
    "'"  ) key='apostrophe'        ;;
    '('  ) key='Shift+parenleft'   ;;
    ')'  ) key='Shift+parenright'  ;;
    '*'  ) key='Shift+asterisk'    ;;
    '+'  ) key='Shift+plus'        ;;
    ','  ) key='comma'             ;;
    '-'  ) key='minus'             ;;
    '.'  ) key='period'            ;;
    '/'  ) key='slash'             ;;
    ':'  ) key='Shift+colon'       ;;
    ';'  ) key='semicolon'         ;;
    '<'  ) key='Shift+less'        ;;
    '='  ) key='equal'             ;;
    '>'  ) key='Shift+greater'     ;;
    '?'  ) key='Shift+question'    ;;
    '@'  ) key='Shift+at'          ;;
    'A'  ) key='Shift+a'           ;;
    'B'  ) key='Shift+b'           ;;
    'C'  ) key='Shift+c'           ;;
    'D'  ) key='Shift+d'           ;;
    'E'  ) key='Shift+e'           ;;
    'F'  ) key='Shift+f'           ;;
    'G'  ) key='Shift+g'           ;;
    'H'  ) key='Shift+h'           ;;
    'I'  ) key='Shift+i'           ;;
    'J'  ) key='Shift+j'           ;;
    'K'  ) key='Shift+k'           ;;
    'L'  ) key='Shift+l'           ;;
    'M'  ) key='Shift+m'           ;;
    'N'  ) key='Shift+n'           ;;
    'O'  ) key='Shift+o'           ;;
    'P'  ) key='Shift+p'           ;;
    'Q'  ) key='Shift+q'           ;;
    'R'  ) key='Shift+r'           ;;
    'S'  ) key='Shift+s'           ;;
    'T'  ) key='Shift+t'           ;;
    'U'  ) key='Shift+u'           ;;
    'V'  ) key='Shift+v'           ;;
    'W'  ) key='Shift+w'           ;;
    'X'  ) key='Shift+x'           ;;
    'Y'  ) key='Shift+y'           ;;
    'Z'  ) key='Shift+z'           ;;
    '['  ) key='bracketleft'       ;;
    '\'  ) key='backslash'         ;;
    ']'  ) key='bracketright'      ;;
    '^'  ) key='Shift+asciicircum' ;;
    '_'  ) key='Shift+underscore'  ;;
    '`'  ) key='grave'             ;;
    '{'  ) key='Shift+braceleft'   ;;
    '|'  ) key='Shift+bar'         ;;
    '}'  ) key='Shift+braceright'  ;;
    '~'  ) key='Shift+asciitilde'  ;;
  esac
  xsendkey -window "$windowId" "$key"
done
