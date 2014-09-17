# sendkeys

Bash scripts for sending key presses to open applications in X Windows (GNOME, KDE, Unity, etc.). This can be useful for automating common tasks such as sending an F5 key press to a browser window to refresh the page. Uses Alan Donovan's xsendkey.c (http://people.csail.mit.edu/adonovan/hacks/xsendkey.html).

## Installation

1. Install wmctrl (on Ubuntu run ```sudo apt-get install wmctrl libx11-dev```)
2. ```git clone https://github.com/kyoto/sendkeys.git```
3. ```cd sendkeys/```
4. ```make```
5. Move the compiled xsendkey binary somewhere on your ```$PATH```

## Usage Examples

Note that the target application (e.g. Google Chrome) needs to already be open for these to work.

#### Send a single key press with sendkey.sh

* ```sendkey.sh 'Google Chrome' F5```

#### Send a series of key presses with sendkeys.sh

* ```sendkeys.sh 'Terminal' 'echo hello'```
* ```sendkeys.sh 'Terminal' 'start-server.sh'```

#### Open multiple web searches in Google Chrome

Example bash script to open multiple web searches in different Google Chrome tabs. Takes the text file example.txt as input and searches for each line using Chrome's Omnibox.

```bash
#!/bin/bash
title='Chrome'
cat example.txt | while read line; do
  sendkey.sh "$title" 'Control+t'
  sendkey.sh "$title" 'Control+l'
  sendkeys.sh "$title" "$line"
  sendkey.sh "$title" 'Return'
done
```

#### Vim

examples/vim/sendkeys.vim contains some examples of using these scripts to do common tasks in Vim.

## License

License details for Alan Donovan's xsendkey.c can be found at the top of that file. Other files are released under the MIT license.

### The MIT License (MIT)

Copyright (c) 2012 Andrew Pickering, andypickering.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
