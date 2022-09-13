"
" General Config
"
syntax enable
colorscheme srcery

set nowrap                      " display long lines on single line
set encoding=UTF-8              " the encoding we're using
set fileencoding=UTF-8          " the encoding written to file
set splitbelow                  " horizontal splits default to bottom
set splitright                  " vertical splits default to right side
set noshowmode                  " don't show current mode
set mouse=a                     " enable mouse
set number relativenumber       " use relative line numbering
set cursorline                  " highlight line cursor is on
set backspace=indent,eol,start  " make backspace normally
set expandtab                   " convert tabs to spaces
set tabstop=4                   " use 4 spaces per tab
set shiftwidth=4                " set number of spaces inserted for indentation
set smarttab                    " tabbing realizes you have 2 spaces vs 4 spaces
set background=dark             " tell vim what kind of background we're using
set scrolloff=999               " center cursor vertically when possible

" Change cursor for different modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Enable Syntax for Salesforce Related Files
au BufNewFile,BufRead *.cls set filetype=java
au BufNewFile,BufRead *.page set filetype=html
au BufNewFile,BufRead *.trigger set filetype=java

" Enable running Python code
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

