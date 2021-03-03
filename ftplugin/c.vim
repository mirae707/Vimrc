" c/cpp dev settings
"nnoremap <leader>rb :!gcc -g % -Wall -o %<<CR>
"nnoremap <leader>rr :!./%<<CR>
"nnoremap <leader>rm :make<CR>

nmap <C-F5> :w <CR> :!gcc -g % -o %<.out && ./%<.out <CR>
"nmap <C-F5> :w <CR> :!gcc -g % -o %< && ./%< <CR>

" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
map <F12> <C-]>
" in diff mode we use the spell check keys for merging
nmap <F5> :packadd termdebug<CR> :Termdebug<CR>
