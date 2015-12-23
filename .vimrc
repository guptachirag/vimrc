set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'Shutnik/jshint2.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'klen/python-mode'
Plugin 'vim-scripts/SearchComplete'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'Townk/vim-autoclose'
Plugin 'xolox/vim-misc'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'xolox/vim-session'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

nnoremap ; :
inoremap kl <esc>
set mouse=c
set acd

nnoremap gr gT

" lint js file on save
let jshint2_save = 1

" setting for quickly navigating between splits  
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

au BufWriteCmd *.py write || :PymodeLint

set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set colorcolumn=81

" set minimum height for window to 0
set wmh=0

" set number on side
set number
set ruler

" show the matching part of the pair for [] {} and ()
set showmatch

" set different indentation for different fileypes
" autocmd FileType python setlocal shiftwidth=4 softtabstop=4

" close html tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"

" search related
set ignorecase
set smartcase
set hlsearch
set incsearch

" setting colorscheme
colorscheme gruvbox

" set background=light
" colorscheme solarized
" set background=dark

" removing tool bar and all from gui 
set guioptions -=m 
set guioptions -=T
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" change cursorline according to the mode
:autocmd InsertEnter,InsertLeave * set cul!

" map ,/ to toggle comment
map ,/ <plug>NERDCommenterToggle<CR>
let NERDSpaceDelims=1

" session management
let g:session_autoload='yes'
let g:session_autosave='yes'

" source code pro font
if has("win32")
    set guifont=Source_Code_Pro:h12:cANSI
else
    set guifont=Source\ Code\ Pro\ 10
endif

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif
