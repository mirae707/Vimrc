set nocompatible
set enc=utf-8
set termencoding=utf-8
filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.
set t_Co=256
set background=dark
set number                 " turn line numbers on
set showmatch              " highlight matching braces
set autoindent             " Indent according to previous line.
set smartindent            " use intelligent indentation for C
set expandtab              " Use spaces instead of tabs.
set softtabstop=4          " Tab key indents by 4 spaces.
set shiftwidth=4           " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set backspace=indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus=2           " Always show statusline.
set display=lastline       " Show as much as possible of the last line.
set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.
set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report=0               " Always report changed lines.
set synmaxcol=200          " Only highlight the first 200 columns.
set list                   " Show non-printable characters.
set shell=/bin/zsh         " Set default shell for terminal in vim
set nobackup               " Some servers have issues with backup files
set nowritebackup

if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Keyboard Mappings
let mapleader = ","
"nmap <leader>T :enew<cr>

" 다음 버퍼로 이동
nnoremap <leader>l :bnext<CR>

" 이전 버퍼로 이동
nnoremap <leader>h :bprevious<CR>

" 현재 버퍼를 닫고 이전 버퍼로 이동
" 탭 닫기 단축키를 대체한다.
nnoremap <leader>bq :bp <BAR> bd #<CR>

" 모든 버퍼와 각 버퍼 상태 출력
nnoremap <Leader>bl :ls<CR>:b<Space>

" 터미널 열기
nnoremap <leader>t :term<CR>

" Ctrl S 로 저장
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

"
" Commenting blocks of code.
" This specifies the comment character when specifying block comments.
autocmd FileType c,cpp,java,scala let b:comment_leader = '//'
autocmd FileType sh,ruby,python let b:comment_leader = '#'
autocmd FileType conf,fstab let b:comment_leader = '#'
autocmd FileType tex let b:comment_leader = '%'
autocmd FileType mail let b:comment_leader = '>'
autocmd FileType vim let b:comment_leader = '"'

"this makes it so you can Shift-V highlight lots of text then press ,cc to
"comment it or ,cu to uncomment.
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

let g:termdebug_wide=1     " Termdebug window setting
