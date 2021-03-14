" python dev settings
"  Run
nnoremap <C-F5> :w <bar> exec '!python3 '.shellescape('%')<CR>
"  Debugging
nnoremap <F5> :!python3 -m pudb.run %<CR>
let python_highlight_all = 1
