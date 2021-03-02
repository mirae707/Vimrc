" python dev settings
"  Run
nnoremap <leader>rr :w <bar> exec '!python3 '.shellescape('%')<CR>
"  Debugging
nnoremap <leader>rd :!python3 -m pudb.run %<CR>
let python_highlight_all = 1
