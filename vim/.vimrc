"      VUNDLE STUFF
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"
" PLUGINS
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin for coloschemes
Plugin 'flazz/vim-colorschemes'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


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


"
" GENERAL
"
syntax on
"colorscheme molokai
set number relativenumber
" highlight cursor line
set cursorline
" Make backspace normal
set backspace=indent,eol,start
" Change cursor for different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Set tabs to be spaces
set expandtab
set tabstop=4
" Show whitespace chars
"set list
"set listchars=eol:¬
" Center cursor vertically when possible
set scrolloff=999


"
" Commands
"
" Paste It! (PI)
" Send selected text to sprunge.us and send URL to clipboard
command -range=% PI silent execute <line1> . "," . <line2> . "w !curl -F 'sprunge=<-' http://sprunge.us | tr -d '\\n' | pbcopy"


"
" Functions
"

" Meow!
function Meow()
        echom "Meow!"
endfunction

" Deleted Trailing Whitespace
function DTW()
        %s/\s\+$//e
endfunction

"
" APEX SYNTAX
"

"filetype on
au BufNewFile,BufRead *.cls set filetype=java
au BufNewFile,BufRead *.page set filetype=html
au BufNewFile,BufRead *.trigger set filetype=java

