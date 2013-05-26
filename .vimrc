" David Lester
set nocompatible
filetype plugin on
filetype indent on
filetype on

" I finally converted
"let mapleader=";"
imap jj <Esc>

" Allow for easy copy and paste
"vmap Y :w !pbcopy<cr>
map <leader>P :setlocal paste!<cr>
map <leader>: :sp %<cr>

" Quick line referencing and column
"nnoremap <silent> <leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>
nnoremap <silent> <leader>c :execute 'match Search /\%'.virtcol('.').'v/'<CR>

" Spell check
map <leader>ss :setlocal spell!<cr>
set spell

" Column at 80,100 so  you're not a bad programmer
set colorcolumn=80,100

autocmd! bufwritepost .vimrc source ~/.vimrc

" Vim goodness
set laststatus=2
set so=7
set wildmenu
set ruler
set hid
set nobackup
set nowrap
set nowb
set noswapfile
set undodir=~/.vim/undodir
set undofile
set noerrorbells
set smarttab
set smartindent
set autoindent
set ignorecase
set showmode
set hlsearch
set mouse=a
set history=500
set showmatch 
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set backspace=2
set comments=sl:/*,mb:*,elx:*/
set number
set scrolloff=10

" Bindings for C++
ab fori for (int i = 0; i < n; i++) {
ab forj for (int j = 0; j < n; j++) {
ab forvin for (vector<int>::iterator vit = v.begin(); vit != v.end(); ++vit) {
ab includeio #include <iostream>
ab includevector #include <vector>
ab includemap #include <map>
ab includealgo #include <algorithm>
ab includecstdio #include <cstdio>
ab includecstdlib #include <cstdlib>
ab intmain int main(int argc, char** argv) {

" Cool theme
set background=dark
syntax enable
hi ColorColumn term=none cterm=none ctermbg=0
au VimResized * exe "normal! \<c-w>="
let g:clan_auto_select=1
colorscheme default
autocmd BufWritePre *.py :%s/\s\+$//e
