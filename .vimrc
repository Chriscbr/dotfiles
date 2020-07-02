set nocompatible

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Most of these are copied from defaults
set history=200
set backspace=indent,eol,start
set showcmd
set ruler
set wildmenu

set ttimeout
set ttimeoutlen=100

set display=truncate
set scrolloff=5

" Add file numbers
set number relativenumber
set nu rnu

" Keybinds to move text up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

filetype plugin indent on

syntax on
