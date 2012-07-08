# sendkeys

Couple of bash scripts for sending key presses to windows in X. Uses Alan Donovan's xsendkey.c (http://people.csail.mit.edu/adonovan/hacks/xsendkey.html).

## Installation

1. Install wmctrl (on Ubuntu run ```sudo apt-get install wmctrl```)
2. ```git clone https://github.com/kyoto/sendkeys.git```
3. ```cd sendkeys/```
4. ```make```
5. Move the compiled xsendkey binary somewhere on your ```$PATH```

## Usage Examples

Send a single key press with sendkey.sh

* ```sendkey.sh 'Google Chrome' F5```

Send a series of key presses with sendkeys.sh

* ```sendkeys.sh 'Terminal' 'echo hello'```
* ```sendkeys.sh 'Terminal' 'start-server.sh'```

vim/sendkeys.vim contains some examples of using these scripts to do common tasks from Vim.

## License

License details for Alan Donovan's xsendkey.c can be found at the top of that file. Other files are released under the MIT license.

### The MIT License (MIT)

Copyright (c) 2012 Andrew Pickering, andypickering.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.