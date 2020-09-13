"
"  ____  ____   _  ____    __    __    _ ____  ____    __  
" |    ||    \ | ||    | _|  |_ \  \  //|    ||    \  /  | 
" |    ||     \| ||    ||_    _|_\  \// |    ||     \/   | 
" |____||__/\____||____|  |__| |_|\__/  |____||__/\__/|__| 
"                                                          
"

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
"Plug 'scrooloose/nerdcommenter'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'morhetz/gruvbox'
"Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()


"
" NerdTree  
"
nmap <C-b> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" Open nerdtree when no file specified for vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open nerdtree when directory is specified for vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" Remove expand/collapse arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()


"
" coc config
"


"
" GENERAL
"
syntax on
colorscheme srcery
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
" Enable Syntax for Salesforce Related Files 
"
au BufNewFile,BufRead *.cls set filetype=java
au BufNewFile,BufRead *.page set filetype=html
au BufNewFile,BufRead *.trigger set filetype=java
