set number
set noswapfile
set tabstop=4
set softtabstop=4
set autoindent 
set encoding=utf-8
set shiftwidth=4
set expandtab
set relativenumber
set hidden
set laststatus=2
set clipboard=unnamed
set incsearch  " Jumping search
set encoding=utf-8
set termencoding=utf-8

syntax enable
filetype indent on

" Testing some auto running...need to find something better.
" autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Colours
" highlight LineNr ctermfg=grey ctermbg=black

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
" Plug 'psf/black', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


" Colours
set background=dark
colorscheme gruvbox

nnoremap <C-p> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>

" Python related
autocmd BufWritePre *.py execute ':Black'
