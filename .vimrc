set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Neat
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
"Bundle 'wakatime/vim-wakatime'

"Rust
"Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'

"HTML
Plugin 'vim-scripts/closetag.vim'

"Colors
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number     "Line numbers
set wildmenu   "gui-weird dropdown menu
syntax enable  "syntax highliting

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" I don't know what the fuck this does
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
" Maybe I'll use this once I'm pro
"set relativenumber
set undofile

set wrap
set textwidth=85
set formatoptions=qrn1
set colorcolumn=85
highlight ColorColumn ctermbg=white

"Rust racer
set hidden
let g:racer_cmd = "~/prog/rust/racer/racer/target/release/racer"
let $RUST_SRC_PATH="/usr/src/rust/src/"

filetype indent on
"Colors
set t_Co=256
let g:jellybeans_use_lowcolor_black = 0
colorscheme jellybeans
hi link rustConditional Keyword
let g:ycm_autoclose_preview_window_after_completion = 1
