call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-fugitive'
Plug 'ararslan/license-to-vim'
call plug#end()

syntax on
filetype plugin indent on

set background=dark
colorscheme gruvbox
set ruler
set hidden
set list
set number
set listchars=tab:▸…,trail:•
set cursorline
set clipboard=unnamedplus
set mouse=a
set colorcolumn=92

set laststatus=2
set showtabline=2
set noshowmode

set tabstop=8
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set autoindent

autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType yaml setlocal shiftwidth=2

let g:latex_to_unicode_tab = 1
let g:latex_to_unicode_suggestions = 1
let g:latex_to_unicode_eager = 1
let g:latex_to_unicode_auto = 1
let g:default_julia_version = 'devel'

let fortran_free_source = 1
let fortran_more_precise = 1
let fortran_do_enddo = 1

let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:license_author = 'Alex Arslan'
let g:license_email = 'ararslan@comcast.net'
