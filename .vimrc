syntax enable
filetype indent on

set autoindent 
set autoread
set backspace=indent,eol,start
set clipboard=unnamed
set nocompatible
set number
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set ruler
set hidden
set laststatus=2
set incsearch  " Jumping search
set encoding=utf-8
set termencoding=utf-8

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
Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
call plug#end()


" Colours
set background=dark
colorscheme gruvbox

nnoremap <C-p> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>
