set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=2
set shiftwidth=2
set softtabstop=2

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

Plugin 'edkolev/tmuxline.vim'

" REMINDER! brew install ack
Plugin 'mileszs/ack.vim'

Plugin 'vim-scripts/LustyExplorer'
"
" You are running with 'hidden' mode off.  LustyExplorer may                                      
" sometimes emit error messages in this mode -- you should turn
" it on, like so:
"   :set hidden
"
" Even better, put this in your .vimrc file.
set hidden

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

" Solarized theme
syntax enable
set background=dark

set relativenumber

" leader
let mapleader = ","

" mappings
nmap <leader>r :call VimuxRunCommand("pulp run")<cr>
nmap <leader>f :Ack! ""<Left>
nmap <leader>F :Ack! <C-r><C-w><cr>
nmap <leader>q :q<cr>
nmap <leader>w :w<cr>
nmap <leader>m :bprevious<cr>
nmap <leader>. :bnext<cr>
nmap <leader>/ :LustyBufferGrep<cr>

colorscheme solarized

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'light'
let g:airline#extensions#tabline#enabled = 1

source .keymap.colemak.vim

