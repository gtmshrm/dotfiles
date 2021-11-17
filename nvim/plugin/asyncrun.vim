" Use when file in same dir
autocmd FileType c nmap <Leader>y :AsyncRun -mode=term -pos=right -cols=80 gcc -std=c99 "%" -o "%<" && ./"%<"<CR>
" Use when file in diff dir
"autocmd FileType c nmap <Leader>y :AsyncRun -mode=term -pos=right -cols=80 gcc -std=c99 "%" -o "%<" && "%<"<CR>
autocmd FileType c nmap <Leader>r :AsyncRun -mode=term -pos=right -cols=80 make run<CR>

" Use when file in same dir
autocmd FileType cpp nmap <Leader>y :AsyncRun -mode=term -pos=right -cols=80 g++ -std=c++20 -O3 -march=native "%" -o "%<" && ./"%<"<CR>
" Use when file in diff dir
"autocmd FileType cpp nmap <Leader>y :AsyncRun -mode=term -pos=right -cols=80 g++ -std=c++20 -O3 -march=native "%" -o "%<" && "%<"<CR>
autocmd FileType cpp nmap <Leader>r :AsyncRun -mode=term -pos=right -cols=80 make run<CR>

autocmd FileType python nmap <Leader>r :AsyncRun -mode=term -pos=right -cols=80 python "%"<CR>
