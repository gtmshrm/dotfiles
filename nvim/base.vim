set nu
set rnu
set undofile
set laststatus=2
set smartcase
set encoding=utf-8              " Set default encoding to UTF-8
set fileformat=unix
set showcmd
set autoread                    " Automatically reread changed files without asking me anything
set autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch
" Basic vim settings
set hidden
set visualbell
set number
set relativenumber
set nobackup
set noswapfile
set noshowmode
set nowrap
" Set the interpreter's title
set title
" Global tab width.
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set grepprg=rg\ --vimgrep
set grepformat^=%f:%l:%c:%m
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set inccommand="split"
set splitbelow
set splitright
set confirm
set conceallevel=2
set clipboard+=unnamed
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
	\,a:blinkwait700-blinkoff1000-blinkon1000-Cursor/lCursor
\,sm:block-blinkwait175-blinkoff150-blinkon175

" Colorscheme
colorscheme wal

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" Set filetype tab settings
autocmd FileType ruby,json,haml,eruby,yaml,html,javascript,coffee,sass,cucumber,stylus,css,xml,htmldjango set ai ts=2 sw=2 sts=2 et
autocmd FileType python,doctest set ai ts=4 sw=4 sts=4 et

" Terminal splits
command! -nargs=* Term 10split | terminal <args>
command! -nargs=* Vterm vsplit | terminal <args>
autocmd CompleteDone * silent! pclose!

" From completion engine
" TODO find out what this code does
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END
