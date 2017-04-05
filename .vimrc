set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=2
set shiftwidth=2
set softtabstop=2

" set cursorline
" set cursorcolumn

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'zacanger/angr.vim'

Plugin 'tpope/vim-vividchalk'

Plugin 'benmills/vimux'

Plugin 'raichoo/purescript-vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'nightsense/seabird'

Plugin 'zcodes/vim-colors-basic'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'mileszs/ack.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-git'

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

" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" How can I map a specific key or shortcut to open NERDTree?
map <C-t> :NERDTreeToggle<CR>

" How can I close vim if the only window left open is a NERDTree?
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax on

set background=dark
set relativenumber

" leader
let mapleader = ","

map <leader>q :q<cr>

" pulp
nmap <leader>pr :call VimuxRunCommand("pulp run")<cr>
nmap <leader>pb :call VimuxRunCommand("pulp build")<cr>

