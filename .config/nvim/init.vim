" Auto-install vim-plug (if not found).
if empty(glob('$HOME/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

" Auto-install missing plugins.
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | source $MYVIMRC
	\| endif

call plug#begin('$HOME/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

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

nnoremap <C-P> :FZF<CR>

let g:netrw_banner = 0
