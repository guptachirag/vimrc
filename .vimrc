call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-syntastic/syntastic'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-commentary'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'maralla/completor.vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

" Plug 'Townk/vim-autoclose'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'ervandew/supertab'
" Plug 'davidhalter/jedi-vim'
" Plug 'fatih/vim-go'
" Plug 'nvie/vim-flake8'
" Plug 'xolox/vim-lua-ftplugin'
" Plug 'klen/python-mode'
" Plug 'Shougo/neocomplete.vim'
" Plug 'xolox/vim-notes'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'w0ng/vim-hybrid'
" Plug 'dracula/vim'
" Plug 'sjl/badwolf'
" Plug 'tomasr/molokai'
" Plug 'notpratheek/vim-luna'
" Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'majutsushi/tagbar'
" Plug 'xolox/vim-session'
" Plug 'Valloric/YouCompleteMe'
" Plug 'Shutnik/jshint2.vim'

call plug#end()

set nocompatible
set noswapfile
set autoindent
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
set incsearch
set autoread

autocmd BufWritePre * %s/\s\+$//e

nnoremap ; :
inoremap kl <esc>
nnoremap gr gT

let mapleader=","

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1

" nerdtree
let g:NERDTreeWinSize = 30
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:nerdtree_tabs_open_on_gui_startup = 2
let g:nerdtree_tabs_open_on_console_startup = 2
let g:nerdtree_tabs_open_on_new_tab=1
let g:nerdtree_tabs_smart_startup_focus=2
let g:NERDTreeWinPos = "right"

" setting for quickly navigating between splits
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" settings for easytags
let g:easytags_async = 1
let g:easytags_auto_highlight = 0

" setting colorscheme
colorscheme gruvbox
set background=dark
set termguicolors
set fillchars+=vert:│
hi VertSplit ctermbg=NONE guibg=NONE

" map ,/ to toggle comment
map <leader>/ :Commentary<CR>

" FZF
nnoremap <leader>p :Files<CR>
nnoremap <leader>l :Tags<CR>

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

if has('gui_running')
  set guioptions -=m
  set guioptions -=T
  set guioptions-=r
  set guioptions-=L
  set lines=999 columns=999
  set guifont=Source\ Code\ Pro\ 12
endif
