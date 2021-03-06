" c dev settings
nmap <C-F5> :w <CR> :!gcc -g -O -Wall -W -pedantic -ansi -std=c99 % -o %< && ./%<<CR>
"nmap <C-F5> :w <CR> :!gcc -g % -o %< && ./%< <CR>

" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
map <F12> <C-]>
" in diff mode we use the spell check keys for merging
nmap <F5> :packadd termdebug<CR> :Termdebug<CR>
