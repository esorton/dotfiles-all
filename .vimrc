
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

call vundle#end()
filetype plugin indent on


set autoindent
set autowrite
set background=dark
set backup
set backupdir=$HOME/tmp/.backups.vim
set ignorecase
set incsearch
set listchars=tab:»-,trail:*,eol:$,extends:+,precedes:+
set modelines=5
set number
set numberwidth=6
set ruler
set textwidth=78
set showcmd
set showmatch
set smartindent
set viminfo=%,'50,\"100,:100,n~/.vim/viminfo
set visualbell

syntax on

set background=light
set t_Co=16
colorscheme solarized

set laststatus=2

let g:airline#extensions#tabline#enabled = 1
