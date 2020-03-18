" General mappings {{{
" ----------------
inoremap jk <esc>
nnoremap Y y$

let mapleader = " "
let maplocalleader = ","

nnoremap <C-J> <C-W><C-W>
nnoremap <C-K> <C-W>W
nnoremap <C-L> <C-W>>
nnoremap <C-H> <C-W><
" }}}

" LocalLeader mappings {{{
" --------------------
nnoremap <LocalLeader>s :split<CR>
nnoremap <LocalLeader>v :vsplit<CR>
" }}}

" Terminal mode mappings {{{
" ----------------------
tnoremap <C-j><C-k> <C-\><C-N>

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
" }}}
