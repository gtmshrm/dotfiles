" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

augroup fmt
    autocmd!
    " autocmd BufWritePre *.cc,*.cpp,*.cxx,*.hpp Neoformat
augroup END
