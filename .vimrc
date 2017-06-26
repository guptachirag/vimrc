filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Townk/vim-autoclose'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'maralla/completor.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-commentary'

Plugin 'xolox/vim-misc'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Plugin 'scrooloose/nerdcommenter'
" Plugin 'ervandew/supertab'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'fatih/vim-go'
" Plugin 'nvie/vim-flake8'
" Plugin 'xolox/vim-lua-ftplugin'
" Plugin 'klen/python-mode'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'xolox/vim-notes'
" Plugin 'Shougo/neosnippet.vim'
" Plugin 'Shougo/neosnippet-snippets'
" Plugin 'w0ng/vim-hybrid'
" Plugin 'dracula/vim'
" Plugin 'sjl/badwolf'
" Plugin 'tomasr/molokai'
" Plugin 'notpratheek/vim-luna'
" Plugin 'chriskempson/vim-tomorrow-theme'
" Plugin 'majutsushi/tagbar'
" Plugin 'xolox/vim-session'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shutnik/jshint2.vim'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
syntax on

set nocompatible
set noswapfile
set autoindent
set mouse=a
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
set splitright
set splitbelow
set wrap linebreak nolist
set nofoldenable
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set ruler
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
" set colorcolumn=80
" set acd

nnoremap ; :
inoremap kl <esc>
nnoremap gr gT

let mapleader=","

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" nerdtree
let g:NERDTreeWinSize = 40
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_new_tab=1

" setting for quickly navigating between splits
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l


" setting colorscheme
colorscheme gruvbox
set background=dark

" change cursorline according to the mode
:autocmd InsertEnter,InsertLeave * set cul!

" map ,/ to toggle comment
map <leader>/ :Commentary<CR>

" Ctrlp
nnoremap <leader>p :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1

" Syntastic
let g:syntastic_aggregate_errors = 1
let g:syntastic_quiet_messages = {
\'regex': 'E501\|E303\|E302\|E203\|E124\|E225',
\'file:p': '*.py'}
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_go_checkers = ['gofmt', 'govet']
let g:syntastic_javascript_checkers = ['jshint']

" completor
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
let g:completor_python_binary = '/usr/local/bin/python'
let g:completor_gocode_binary = '/Users/chiraggupta/go/bin/gocode'
let g:completor_node_binary = '/usr/local/bin/node'

" autoformat
au BufWrite *.go :Autoformat
" au BufWrite *.js :Autoformat
" au BufWrite *.css :Autoformat
" au BufWrite *.html :Autoformat

if has('gui_running')
  set guioptions -=m
  set guioptions -=T
  set guioptions-=r
  set guioptions-=L
  set lines=999 columns=999
endif

" session management
" let g:session_autoload='yes'
" let g:session_autosave='yes'
" let g:session_default_to_last=1

" source code pro font
" if has("win32")
" set guifont=Source_Code_Pro:h14:cANSI
" else
" set guifont=Source\ Code\ Pro\ 14
" endif

" pylint configuration
" au BufWriteCmd *.py write || :PymodeLint
" let g:pymode_lint_select = 'E501,E301,E302,W'
" let g:pymode_options_max_line_length = 119
" let g:pymode_lint_checkers = ['pyflakes']
" autocmd BufWritePost *.py call Flake8()

" lua-ftp-plugin
" let g:lua_complete_omni = 1
" let g:lua_safe_omni_modules = 1
