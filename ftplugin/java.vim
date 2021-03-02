" java dev settings
nmap <leader>rb :w<CR>:make<CR>
nmap <leader>rr :!java %:r<CR>
set nomodeline
set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
