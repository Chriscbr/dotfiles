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

" Fix mouse settings
set mouse=a

" Use system clipboard when yanking
set clipboard=unnamed

" Keybinds to move text up and down
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

nnoremap <leader>n :NERDTreeToggleVCS<CR>

" Do not automatically delete buffers when switching between files
set hidden

filetype plugin indent on

syntax on

" ensure vim-gitgutter appears immediately, instead of after 4 seconds
set updatetime=100

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" VSCode-like text completion
" Temporarily disabling for now
" Try ":CocList extensions" to see all extensions currently installed
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()
