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

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_preview = 1
let g:netrw_winsize = 30

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Ignore files
let g:netrw_list_hide= '.*\.swp$,.*\.pyc,venv/,.*\.egg-info/,__pycache__/'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'
call plug#end()

let g:ale_python_flake8_options = '--max-line-length=119'
let g:ale_python_black_options='--line-length=119'
let g:ale_fixers = {}
let g:ale_fixers.python = ['black']
let g:ale_linters = {'python': ['flake8']}
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'


augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

set background=dark
silent! colorscheme gruvbox

nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :GFiles<Cr>
nnoremap <C-f> :Rg 
nnoremap <Leader>b :Buffers<Cr>
nnoremap <Leader>e :Ex<Cr>
nnoremap <Leader>w :bd<Cr>
nnoremap <Leader>bb :!python %<Cr>
vnoremap < <gv
vnoremap > >gv

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

