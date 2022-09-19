lua <<EOF
local map = vim.api.nvim_set_keymap
local opts = { 
    noremap = true, 
    silent = true 
}
EOF

" Move to previous/next
nnoremap <silent>    <leader>, <Cmd>BufferPrevious<CR>
nnoremap <silent>    <leader>. <Cmd>BufferNext<CR>
