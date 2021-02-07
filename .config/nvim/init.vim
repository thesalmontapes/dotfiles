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
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }

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

set path+=$GOPATH/**
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_space_tab_error = 1
let g:go_metalinter_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_list_type = 'quickfix'
let g:go_gopls_enabled = 0
let g:go_def_mode = 'godef'
let g:go_info_mode = 'guru'
let g:go_referrers_mode = 'guru'

augroup vimrc_go
	autocmd!
	autocmd FileType go nnoremap <buffer> <Leader>d :GoDeclsDir<CR>
	autocmd FileType go nnoremap <buffer> <Leader>r :up<CR><Plug>(go-run)
	autocmd FileType go nnoremap <buffer> <Leader>b :up<CR><Plug>(go-build)
	autocmd	FileType go nnoremap <buffer> <Leader>t :up<CR><Plug>(go-test)
	autocmd FileType go nnoremap <buffer> <Leader>c <Plug>(go-coverage-toggle)
	autocmd FileType go nnoremap setlocal noexpandtab tabstop=4 shiftwidth=4 textwidth=100
augroup END
