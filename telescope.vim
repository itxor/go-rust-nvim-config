" TELESCOPE START
nnoremap ,f <cmd>Telescope find_files<cr>
nnoremap ,g <cmd>Telescope live_grep<cr>

lua << EOF
require('telescope').load_extension('fzf')
EOF
