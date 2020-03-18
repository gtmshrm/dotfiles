" Airline {{{
" -------
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#buffer_idx_mode=1
"
" Same as terminal theme
let g:airline_theme='onedark'
" }}}

" Startify {{{
" --------
let g:startify_fortune_use_unicode = 1

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'files',     'header': ['   MRU']            },
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

let g:startify_bookmarks = [ 
      \ {'g': '~/Dropbox/special notes/GTD.org'},
      \ ]
" }}}

" Ale {{{
" ---
let g:ale_enabled = 0
let g:ale_completion_enabled = 0
let g:ale_keep_list_window_open = 0
let g:ale_list_window_size = 5
let g:ale_open_list = 0
let g:ale_linters = {'python': ['flake8']}
let g:ale_set_quickfix = 1 
let g:ale_set_loclist = 0
" }}}

" Deoplete {{{
" -----------
let g:deoplete#enable_at_startup = 1
" }}}

" Jedi vim {{{
" --------
" Disable jedi-vim completion to avoid conflict with deoplete-jedi
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "gd"
let g:jedi#goto_assignments_command = ""
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = ""
let g:jedi#rename_command = ""
" }}}

" FZF {{{
" ---
let g:fzf_layout = { 'up': '~20%' }

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --max-filesize=2M --maxdepth=40 --threads 4 '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
let $FZF_DEFAULT_COMMAND = 'rg --files --no-messages --glob "!.git" --maxdepth=40'
let g:fzf_tags_command = 'ctags -x -R  --exclude="target/*" --exclude="*.json"'
command! -bang -nargs=* BTags :call fzf#vim#buffer_tags(<q-args>, {'options': ['--no-reverse', '--prompt', 'TAGS ❯❯❯ ']}, <bang>0)
command! -bang -nargs=* Tags :call fzf#vim#tags(<q-args>, {'options': ['--no-reverse', '--prompt', 'TAGS ❯❯❯ '], 'source': 'ctags -x -R  --exclude="target/*" --exclude="*.json"'}, <bang>0)
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
"let g:fzf_history_dir = '~/.local/share/fzf-history'
nmap <Leader>a :History<CR>
nmap <Leader>f :FZF<CR>
nmap <Leader>F :FZF ~<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>t :BTags<CR>
nmap <Leader>T :Tags<CR>
nmap <Leader>m :Marks<CR>
nmap <Leader>M :History:<CR>
nmap <Leader>c :Commands<CR>
nmap <Leader>h :Helptags<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>
nmap <Leader>g :Rg<CR>
nmap <Leader>pl :Pad ls<CR>
" }}}

" Vim-cool {{{
" --------
let g:CoolTotalMatches = 1
" }}}

" Echodoc {{{
" -------
" TODO not working. make this work
let g:echodoc#enable_at_startup = 1
" }}}

" Language Client {{{
" ---------------
" TODO Learn in detail about LanguageClient and change all it's config
" let g:LanguageClient_serverCommands = {
"     \ 'python': ['pyls'],
"     \ }

" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1

" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
" }}}

" AsyncRun {{{
" --------
" TODO Read AsyncRun's wiki section on github: "Better way to build C/C++ projects" and create key bindings
" TODO Appropriately set size for quickfix window
" TODO Add bindings for individual stages for C/C++ project build such like compilation and linking
" TODO Change C/C++ bindings according to your compiler and flags
" TODO Read wiki of AsyncRun on github and make asyncrun_bell work!
" C key bindings: compilation(F7), running(F8) and build(F9)
autocmd FileType c nnoremap <F7> :AsyncRun gcc "%" <CR>
autocmd FileType c nnoremap <F8> :AsyncRun ./a.out <CR>
autocmd FileType c nnoremap <F9> :AsyncRun gcc "%" && ./a.out <CR>
" C++ key bindings: compilation(F7), running(F8) and build(F9)
autocmd FileType cpp nnoremap <F7> :AsyncRun g++ -std=c++11 -Wall -Wextra -O2 "%" <CR>
autocmd FileType cpp nnoremap <F8> :AsyncRun ./a.out <CR>
autocmd FileType cpp nnoremap <F9> :AsyncRun ./build.sh <CR>
" Python key bindings: run(F9)
autocmd FileType python nnoremap <F9> :AsyncRun python "%" <CR>
" F10 to toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(30)<cr>

" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window <n> lines height.
let g:asyncrun_open = 10

" ring the bell to notify you job finished
let g:asyncrun_bell = 1
" }}}

" Sneak {{{
" -----
let g:sneak#s_next = 1
let g:sneak#label = 1
let g:sneak#prompt = '>>>'
autocmd ColorScheme * hi Sneak guifg=#61afef guibg=#3e4452 ctermfg=75 ctermbg=17
autocmd ColorScheme * hi SneakScope guifg=#61afef guibg=#3e4452 ctermfg=75 ctermbg=17
nmap <Leader>s <Plug>Sneak_s
nmap <Leader>S <Plug>Sneak_S
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T
" }}}

" Neosnippet {{{
" ----------
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

let g:neosnippet#enable_snipmate_compatibility = 1
" Load personal snippets
let g:neosnippet#snippets_directory='~/.config/nvim/snippets'
" }}}


" ============== Writing tools ==============

" Vim Pandoc {{{
" ----------
let g:pandoc#spell#enabled = 0
let g:pandoc#filetypes#handled = ["markdown", "rst", "extra", "textile", "html", "latex" ]
let g:pandoc#modules#disabled = ["spell", "folding"]
"let g:pandoc#formatting#mode = "A"
let g:pandoc#formatting#smart_autoformat_on_cursormoved = 1
let g:pandoc#syntax#conceal#urls = 1
"Pandoc after
let g:pandoc#after#modules#enabled = ["tablemode", "neosnippets"]
" }}}

" Goyo {{{
" ----
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" }}}

" Vim-pad {{{
" -------
let g:pad#set_mappings = 0
let g:pad#dir = "/home/gtmshrm/Dropbox/notes"
let g:pad#default_format = "pandoc"
let g:pad#local_dir = ".notes"
let g:pad#default_file_extension = ".md"
let g:pad#ignored_extensions = ["pdf", "odt", "docx", "doc", "html"]
let g:pad#window_height = 10
let g:pad#search_backend = "rg"
"let g:pad#rename_files = 0
let g:pad#title_first_line = 1
let g:pad#open_in_split = 0
" }}}

" Vimtex {{{
" ------
if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:vimtex_view_method = "zathura"
let g:vimtex_compiler_progname = 'nvr'
"let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete
"let g:deoplete#omni#input_patterns.tex = 
"        \   '\\(?:'
"        \  .   '\w*cite\w*(?:\s*\[[^]]*\]){0,2}\s*{[^}]*'
"        \  .  '|\w*ref(?:\s*\{[^}]*|range\s*\{[^,}]*(?:}{)?)'
"        \  .  '|hyperref\s*\[[^]]*'
"        \  .  '|includegraphics\*?(?:\s*\[[^]]*\]){0,2}\s*\{[^}]*'
"        \  .  '|(?:include(?:only)?|input)\s*\{[^}]*'
"        \  .')'
" }}}

" Table-mode {{{
" ----------
let g:table_mode_corner='|'
" }}}

" Vim-wiki {{{
" --------
" TODO Ask hitesh about this: Change dir name to what hitesh uses. He uses '~/Dropbox/wiki' instead of '~/Dropbox/special notes'
let g:vimwiki_list = [{'path': '~/Dropbox/special notes', 'ext': '.md', 'auto_toc': 1,
  \'index': 'main', 'syntax': 'markdown'}]
let g:vimwiki_global_ext = 0
" }}}
