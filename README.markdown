sendkeys
=======
Couple of bash scripts for sending key presses to and open window in X. Uses Alan Donovan's xsendkey.c (http://people.csail.mit.edu/adonovan/hacks/xsendkey.html).

Installation
------------
1. Install wmctrl if you don't already have it
2. Run make
3. Move the compiled xsendkey somewhere on your path

Usage
-----
Send a single key press:
* sendkey.sh 'Google Chrome' F5

Send a series of key presses:
* sendkeys.sh 'Terminal' "start-server.sh"

vim/sendkeys.vim contains some examples of using these scripts to do common tasks from Vim.
