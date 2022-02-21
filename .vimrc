syntax enable
filetype plugin indent on

set mouse=a
set autoindent
set autoread
set backspace=indent,eol,start
set nocompatible
set number
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set hidden
set laststatus=2
set incsearch  " Jumping search
set encoding=utf-8
set termencoding=utf-8
set scrolloff=8
set term=screen-256color

set guifont=JetBrainsMono-Regular:h16

let g:netrw_banner = 0
let g:netrw_liststyle = 3

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
call plug#end()


" Colours
set background=dark
colorscheme gruvbox

nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <C-p> :Files<Cr>
nnoremap <Leader>b :Buffers<Cr>
nnoremap <Leader>e :Ex<Cr>
vnoremap < <gv
vnoremap > >gv

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Rust
let g:rustfmt_autosave = 1

