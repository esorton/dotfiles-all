""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
"
" Use :so % (or :so ~/.vimrc) to reload while editing.
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vundle Setup
"
" See https://github.com/gmarik/Vundle.vim#quick-start for details.
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" My preferred plugins.
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'esorton/vim-aadl'

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Preferred Configuration
"

" Automatically save on certain commands.
set autowrite

" Allow up to 5 modelines; typically used for custom indentations within a
" file.
set modelines=5

" Still prefer to limit width of text to 80 columnds.
set textwidth=78

" Miscellaneous settings related to display.
set cursorline
set listchars=tab:»-,trail:*,eol:$,extends:+,precedes:+
set showcmd
set showmatch
set laststatus=2
set visualbell

" Prefered indentation.  Need to revist this at some point.
set autoindent
set smartindent

" Configure viminfo; store in .vim directory to avoid dot file clutter.
set viminfo=%,'50,<100,/100,s1,:100,n~/.vim/viminfo

" Preferred search behavior, ignore case unless the pattern contains an upper
" case letter.  This is typically the desired behavior.  Use '\C' before (or
" after) a string to force lower case match.  Also highlight search terms, use
" ':nohl' to clear.
set ignorecase
set smartcase
set incsearch
set hlsearch

" I like line numbers.  I don't like the screen shifting when line
" 100/1000/1000 etc ... is added.  Force six spaces for line numbers.  Most
" monitors have plenty of horizontal space.
set number
set numberwidth=6

" Create backup files; store all backup files in the same directory to avoid
" cluttering up working directories.  My zsh startup scripts create the
" subdirectory.  Only downside, if two files have the same name, only the most
" recently edited file will have a backup.
set backup
set backupdir=$HOME/tmp/.backups.vim

" Search for tags files recursively up the directory tree till found.
set tags+=tags;

" Always enable syntax highlighting; files don't look right without it.
syntax on

" Use solarized colors; need to check and see of t_Co is necessary.
set background=light
set t_Co=256
colorscheme solarized

let g:airline_powerline_fonts=1
