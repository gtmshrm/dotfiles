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
