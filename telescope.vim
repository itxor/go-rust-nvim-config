" TELESCOPE START
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>

lua << EOF
require('telescope').load_extension('fzf')
EOF
