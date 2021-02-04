filetype on
filetype plugin on
filetype indent on

syntax on

set hidden
set autoread
set autowrite
set noswapfile
set number
set relativenumber
set nowrap
set ignorecase
set infercase
set smartcase
set incsearch
set nohlsearch
set splitright
set splitbelow
set fillchars+=vert:\|
set wildignorecase

let mapleader = ' '

nnoremap Y y$

nnoremap <C-K> <C-W>k
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

let g:netrw_banner = 0
