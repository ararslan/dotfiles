" XXX: https://github.com/junegunn/vim-plug/issues/904
autocmd BufRead,BufNewFile *jl set filetype=julia

call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-fugitive'
Plug 'ararslan/license-to-vim'
Plug 'ararslan/llvm.vim'
Plug 'rhysd/conflict-marker.vim'
Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp', 'objc'] }
Plug 'rhysd/committia.vim'
Plug 'rhysd/vim-crystal'
"Plug 'https://git.sr.ht/~ngn/vim-apl'
Plug 'justinmk/vim-syntax-extra'
Plug 'wlangstroth/vim-racket'
Plug 'eraserhd/parinfer-rust', { 'for': ['scheme', 'lisp', 'clojure', 'racket'], 'do': 'cargo build --release' }
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'
Plug 'lifepillar/pgsql.vim'
Plug 'sharadmv/dex-vim'
call plug#end()

syntax on
filetype plugin indent on

set background=dark
colorscheme gruvbox
set ruler
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

set splitright
set splitbelow

autocmd FileType ruby,yaml,crystal setlocal shiftwidth=2
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby
autocmd BufRead,BufNewFile *.rkt,*.rktl set filetype=racket
autocmd BufRead,BufNewFile *.sld set filetype=scheme
autocmd BufRead,BufNewFile *.vba set filetype=vb
autocmd BufRead,BufNewFile *.star set filetype=python
autocmd BufRead,BufNewFile *.md setlocal spell

autocmd! FileType racket inoremap <buffer> <C-\> λ

autocmd! FileType c setlocal cindent cinoptions=(0

let g:latex_to_unicode_tab = 1
let g:latex_to_unicode_suggestions = 1
let g:latex_to_unicode_eager = 1
let g:latex_to_unicode_auto = 1
let g:default_julia_version = 'devel'
let g:julia_indent_align_funcargs = 1
let g:julia_indent_align_import = 1

let fortran_free_source = 1
let fortran_more_precise = 1
let fortran_do_enddo = 1

let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:license_author = 'Alex Arslan'
let g:license_email = 'ararslan@comcast.net'

let g:markdown_fenced_languages = ['julia', 'math=tex']
let g:markdown_syntax_conceal = 0

let g:sql_type_default = 'pgsql'

let g:clang_format#code_style = 'llvm'
let g:clang_format#style_options = {
    \ 'IndentWidth': 4,
    \ 'AccessModifierOffset': -4,
    \ 'ColumnLimit': 92,
    \ 'DerivePointerAlignment': 'false',
    \ 'PointerAlignment': 'Left',
    \ 'AlignAfterOpenBracket': 'Align',
    \ 'AlignEscapedNewlines': 'DontAlign',
    \ 'AllowAllParametersOfDeclarationOnNextLine': 'false',
    \ 'AllowShortCaseLabelsOnASingleLine': 'false'
    \ }
