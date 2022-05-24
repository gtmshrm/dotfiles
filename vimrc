set nocompatible

set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

set exrc
set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
" Linting
set colorcolumn=80
"set signcolumn=yes
" Having longer updatetime (default is 4000ms = 4s) leads to noticeable
" delays and poor user experience.
"set updatetime=50
" Don't pass messages to |ins-completion-menu|
set shortmess+=c

filetype plugin on
syntax on

autocmd FileType json,yaml,html,javascript,stylus,css,xml set ai ts=2 sw=2 sts=2 et
autocmd FileType cpp,java,python set ai ts=4 sw=4 sts=4 et
autocmd FileType c set ai ts=8 sw=8 sts=8 noexpandtab

" General
let mapleader = " "
let maplocalleader = ","

cnoremap Wq wq
inoremap jk <esc>
nnoremap Y y$
nnoremap 0 ^

" TODO Remove if not needed
"nnoremap tj :tabprevious<CR>
"nnoremap tk :tabnext<CR>
"nnoremap th :tabfirst<CR>
"nnoremap tl :tablast<CR>
"nnoremap tn :tabnew<CR>

" Navigation mappings
" " Xmonad-style window navigation
nnoremap <C-K> <C-W><C-W>
nnoremap <C-J> <C-W>W
nnoremap <C-L> <C-W>>
nnoremap <C-H> <C-W><
" " Terminal mode mappings (use <C-w><C-<h,j,k,l> just like regular vim navigation)
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
tnoremap <C-h> <C-\><C-N><C-w>h

" Clipboard
" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg
nnoremap  <leader>y  "+y
nnoremap  <leader>yy "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" LocalLeader mappings
nnoremap <LocalLeader>s :split<CR>
nnoremap <LocalLeader>v :vsplit<CR>
