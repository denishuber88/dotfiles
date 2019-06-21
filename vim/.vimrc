" Don't try to be vi compatible
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim'
"Plugin 'edkolev/tmuxline.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
call vundle#end()            " required
filetype plugin indent on    " required
filetype indent on

set autoread
set number
set relativenumber
set laststatus=2
set autoindent
set tabstop=2
set shiftwidth=4
set expandtab
set softtabstop=2
set wildmenu
set wildmode=longest,list,full
set noshowmode
syntax on

" colors
" :h g:lightline.colorscheme for full list
" wombat, powerlineish, jellybeans, darcula, molokai
let g:lightline = {
      \ 'colorscheme': 'wombat'
      \ }

" wombat256, molokai, kolor, Benokai, delek, mango, monokai-chris, jellybeans
colorscheme molokai

" copy and paste to clipboard
vnoremap  <F6>     :!xclip -f -sel clip<CR>
nnoremap  <F7>     :-1r !xclip -o -sel clip<CR>

" disable arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
nnoremap  <Up>     <NOP>
nnoremap  <Down>   <NOP>

nnoremap  <Left>   <NOP>
nnoremap  <Up>     <NOP>
vnoremap  <Down>   <NOP>
vnoremap  <Left>   <NOP>
vnoremap  <Right>  <NOP>
vnoremap  <Right>  <NOP>

nnoremap  <C-j> <C-W>j
nnoremap  <C-k> <C-W>k
nnoremap  <C-h> <C-W>h
nnoremap  <C-l> <C-W>l

