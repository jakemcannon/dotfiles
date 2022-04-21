set laststatus=2

call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'morhetz/gruvbox'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

"split"
set splitbelow splitright

syntax enable
colorscheme gruvbox
set background=dark
set t_Co=256

set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set relativenumber

set nohlsearch
set incsearch
set nowrap
set scrolloff=8
