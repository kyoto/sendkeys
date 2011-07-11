"Some examples of using sendkeys to do common tasks from Vim

"Save current buffer and send F5 (refresh) to Chrome
map <Leader>ss :w<CR>:silent !sendkey.sh ' Chrom' F5<CR>

"Save current buffer and run the last command in the terminal (don't switch focus away from Vim)
map <Leader>stl :w<CR>:silent !sendkey.sh Terminal Up && sendkey.sh Terminal Return<CR>

"Save current buffer and prompt for a command to run in the terminal (don't switch focus away from Vim)
map <Leader>ste :w<CR>:silent !sendkeys.sh Terminal "" && sendkey.sh Terminal Return<C-Left><C-Left><C-Left><C-Left><Left><Left>

