" Files
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Searches
nnoremap <leader>sh <cmd>lua require('telescope.builtin').search_history()<cr>

" Tags
nnoremap <leader>t <cmd>lua require('telescope.builtin').current_buffer_tags()<cr>
nnoremap <leader>T <cmd>lua require('telescope.builtin').tags()<cr>

" History
nnoremap <leader>a <cmd>lua require('telescope').extensions.frecency.frecency()<cr>
