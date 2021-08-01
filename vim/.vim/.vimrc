syntax on
set clipboard=unnamed
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nohlsearch
set hidden
set scrolloff=8
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set guicursor=
set noshowmode

let mapleader= ","

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
noremap <S-F8> :NERDTreeToggle<CR>


nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>


inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
nmap <F6> <Plug>(JavaComplete-Imports-AddSmart)
imap <F6> <Plug>(JavaComplete-Imports-AddSmart)


set laststatus=2

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'frazrepo/vim-rainbow'
Plug 'prettier/vim-prettier'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'

call plug#end()

autocmd Filetype java setlocal omnifunc=javacomplete#Complete


if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

