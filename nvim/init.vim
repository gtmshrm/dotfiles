if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/gtmshrm/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/gtmshrm/.local/share/dein')
  call dein#begin('/home/gtmshrm/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/gtmshrm/.local/share/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('tpope/vim-commentary')
  call dein#add('wellle/targets.vim')
  call dein#add('Shougo/echodoc.vim')
  " call dein#add('qpkorr/vim-bufkill')
  call dein#add('romainl/vim-cool')
  call dein#add('kshenoy/vim-signature')

  " Always loaded
  " For UI
  call dein#add('rakr/vim-one')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('edkolev/promptline.vim')
  call dein#add('dylanaraps/wal.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('honza/vim-snippets')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('justinmk/vim-sneak')
  call dein#add('justinmk/vim-dirvish')
  call dein#add('tpope/vim-surround')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('w0rp/ale')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('mhinz/vim-startify')
  " call dein#add('autozimu/LanguageClient-neovim', {
  "   \ 'rev': 'next',
  "   \ 'build': 'bash install.sh',
  "   \ })
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 }) 
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

  " Optional
  call dein#add('skywind3000/asyncrun.vim')
  call dein#add('haya14busa/dein-command.vim', {'on_cmd': 'Dein'})
  call dein#add('tpope/vim-fugitive', {'on_cmd': 'Gstatus', 'augroup': 'fugitive', 'on_source': 'gitv'})
  call dein#add('airblade/vim-gitgutter', {'depends': 'fugitive', 'on_source': 'fugitive'})
  call dein#add('gregsexton/gitv', {'on_cmd': 'Gitv', 'depends': 'fugitive'})
  call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})
  call dein#add('zchee/deoplete-clang', {'on_ft': 'cpp'})
  call dein#add('davidhalter/jedi-vim', {'on_ft': 'python'})
  call dein#add('Shougo/neoinclude.vim')

  " For text writing and notes!
  call dein#add('jceb/vim-orgmode')
  call dein#add('fmoralesc/vim-pad')
  call dein#add('vimwiki/vimwiki')
  call dein#add('euclio/vim-markdown-composer')
  call dein#add('vim-pandoc/vim-pandoc', {'name': 'vim_pandoc', 'on_source': 'pandoc-after'})
  call dein#add('dhruvasagar/vim-table-mode', {'on_cmd': 'TableModeToggle'})
  call dein#add('lervag/vimtex', {'on_ft': ['plaintex', 'tex']})
  call dein#add('vim-pandoc/vim-pandoc-syntax', {'depends': 'vim_pandoc'})
  call dein#add('vim-pandoc/vim-pandoc-after', {'depends': 'vim_pandoc'})
  call dein#add('junegunn/goyo.vim', {'on_cmd': 'Goyo'})
  call dein#add('ron89/thesaurus_query.vim', {'on_ft': ['pandoc', 'text']})
  call dein#add('rhysd/vim-grammarous', {'on_ft':['pandoc', 'text']})
  call dein#add('junegunn/limelight.vim', {'on_cmd': 'Limelight'})
  " You can specify revision/branch/tag.

  call dein#add('ryanoasis/vim-devicons')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif

"------------ Load files ------------
source ~/.config/nvim/base.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/plugins.vim
