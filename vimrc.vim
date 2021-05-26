autocmd FileType python source $HOME/.vim/ftplugin/python.vim
autocmd FileType c source $HOME/.vim/ftplugin/c.vim
autocmd FileType cpp source $HOME/.vim/ftplugin/cpp.vim
autocmd FileType java source $HOME/.vim/ftplugin/java.vim
autocmd FileType html,css,js,dart,md source $HOME/.vim/ftplugin/web.vim
source $HOME/.vim/ftplugin/fugitive.vim
source $HOME/.vim/ftplugin/nerdtree.vim
source $HOME/.vim/ftplugin/airline.vim
source $HOME/.vim/ftplugin/basic.vim
source $HOME/.vim/ftplugin/coc.vim
source $HOME/.vim/ftplugin/indentline.vim
source $HOME/.vim/ftplugin/auto-pairs.vim
source $HOME/.vim/ftplugin/nerdcommenter.vim

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'dart-lang/dart-vim-plugin'

call plug#end()

" Run PlugInstall if there are missing plugins
if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

colorscheme gruvbox
