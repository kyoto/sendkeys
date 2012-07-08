" Some examples of using sendkey.sh and sendkeys.sh to do common tasks from Vim
" Note that the target application (e.g. Google Chrome) needs to already be open

" Save current buffer and send F5 (refresh page) to Google Chrome
map <Leader>cr :w<CR>:silent !sendkey.sh 'Chrome' F5<CR>

" Save current buffer and send Ctrl+F5 (refresh page, ignoring cached content) to Google Chrome
map <Leader>cR :w<CR>:silent !sendkey.sh 'Chrome' 'Control+F5'<CR>

" Save current buffer and run the last command in the terminal (does not switch focus away from Vim)
map <Leader>tl :w<CR>:silent !sendkey.sh Terminal Up && sendkey.sh Terminal Return<CR>

" Save current buffer and prompt for a command to run in the terminal
map <Leader>te :w<CR>:silent !sendkeys.sh Terminal "" && sendkey.sh Terminal Return<C-Left><C-Left><C-Left><C-Left><Left><Left>

" In visual mode, search the web for the currently selected text using Google Chrome (using Chome's Omnibox)
vmap <Leader>cs y:silent !sendkey.sh 'Chrome' 'Control+l' && sendkeys.sh 'Chrome' '<S-Insert>' && sendkey.sh 'Chrome' 'Return'<CR>

