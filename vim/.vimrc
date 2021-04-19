set nocompatible 
set shortmess+=I 
set number 
set relativenumber 
set laststatus=2 
set backspace=indent,eol,start

set hidden
set ignorecase
set backspace=indent,eol,start

set incsearch

set noerrorbells visualbell t_vb=
set mouse+=a

nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


syntax enable
packadd! dracula
colorscheme dracula
