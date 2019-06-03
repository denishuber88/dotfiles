" Don't try to be vi compatible
set nocompatible

" Set to auto read when a file is changed from the outside
set autoread

" Set line numbers
set number
set relativenumber

" Status bar
set laststatus=2

" Syntax Highlighting
syntax on

" Load indentation rules corresponding to file type 
filetype indent on
set autoindent

" Tab settings
set tabstop=2
set shiftwidth=4
set expandtab
set softtabstop=2

" Vertical scroll
set scrolloff=5

" Wild Menu
set wildmenu
set wildmode=longest,list,full

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

