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

filetype plugin on
syntax on

" --- Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'tami5/sqlite.lua'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Formatting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'sbdchd/neoformat'

" Editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'ggandor/lightspeed.nvim'
Plug 'jiangmiao/auto-pairs'

" Version Control
Plug 'TimUntersberger/neogit'

" Execution
Plug 'skywind3000/asyncrun.vim'

" Theme
Plug 'ayu-theme/ayu-vim'
Plug 'chriskempson/base16-vim'
Plug 'sickill/vim-monokai'
Plug 'fratajczak/one-monokai-vim'
Plug 'sainnhe/everforest'
Plug 'ajmwagar/vim-deus'
Plug 'overcache/NeoSolarized'
Plug 'gruvbox-community/gruvbox'
Plug 'navarasu/onedark.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'catppuccin/nvim'
Plug 'rose-pine/neovim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Tree, Tabline and Statusline
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

" Load necessary lua modules
:lua require('tree')
":lua require('evil_lualine')
:lua require('treesitter')

" Tab settings
autocmd FileType json,yaml,html,javascript,stylus,css,xml set ai ts=2 sw=2 sts=2 et
autocmd FileType cpp,java,python set ai ts=4 sw=4 sts=4 et
autocmd FileType c set ai ts=8 sw=8 sts=8 noexpandtab

" Terminal splits
command! -nargs=* Term 10split | terminal <args>
command! -nargs=* Vterm vsplit | terminal <args>
autocmd CompleteDone * silent! pclose!
