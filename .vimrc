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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
call plug#end()


" Colours
set background=dark
silent! colorscheme gruvbox

nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <C-p> :Files<Cr>
nnoremap <C-g> :GFiles<Cr>
nnoremap <C-f> :Rg 
nnoremap <Leader>b :Buffers<Cr>
nnoremap <Leader>e :Ex<Cr>
vnoremap < <gv
vnoremap > >gv

" Window Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Comments
noremap <leader>/ :Commentary<cr>

" Rust
let g:rustfmt_autosave = 1

" ALE
let b:ale_linters = {'python': ['flake8']}

" YCM
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
      \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
