" 특정 파일 없이 vim을 열 때 자동으로 실행
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 디렉토리에서 시작할 때 자동으로 실행 (폴더 열기 기능)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Ctrl+n 단축키로 열고 닫기
map <C-n> :NERDTreeToggle<CR>

" 창이 nerdtree만 남을경우 자동 닫기
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 폴더 열림 닫힘 표시
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
