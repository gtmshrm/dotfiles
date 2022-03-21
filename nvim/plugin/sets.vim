" Search nvim config file in current dir first and use it if found.
" This enables us to run custom project-specific build/run options.
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
