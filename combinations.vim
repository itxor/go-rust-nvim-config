" golang keys
" option-command-b
au FileType go nmap <leader>impl <Plug>(go-implements)
" fn+f2 
au FileType go nmap <D-F2> <Plug>(go-rename)
" показывает все ссылки на объект
au FileType go nmap <leader>ref <Plug>(go-referrers)
" generate if err != nil ... 
au FileType go nmap <leader>ie <Plug>(go-iferr)
" go debug start 
au FileType go nmap <leader>bbg <Plug>(go-debug-start)
" go fmt start 
au FileType go nmap <D>fmt <Plug>(go-fmt)
" go lint start 
au FileType go nmap <leader>lint <Plug>(go-lint)
" go vet start 
au FileType go nmap <leader>vet <Plug>(go-lint)
au FileType go nmap <leader>dep <Plug>(go-deps)
au FileType go nmap <leader>gds <Plug>(go-def-stack)

" not working:
" показывает все вызовы объекта
au FileType go nmap <leader>call <Plug>(go-callers)
" go test current func under cursor
au FileType go nmap <leader>tf <Plug>(go-test-func)
" show depends source files 
au FileType go nmap <leader>ssf <Plug>(go-files)


lua <<EOF
    local keymap = vim.api.nvim_set_keymap
    local default_opts = {noremap = true, silent = true}
    local expr_opts = { noremap = true, expr = true, silent = true }

    -- cmd+s: save file
    keymap("n", "<Char-0xAA>", "<cmd>write<cr>", default_opts)
    -- cmd+e: scroll downwords
    keymap("n", "<Char-0xAB>", "<C-e>", default_opts)
    -- cmd+e: scroll upwords
    keymap("n", "<Char-0xAC>", "<C-y>", default_opts)
    -- cmd+h: next tab
    keymap("n", "<Char-0xAD>", "<cmd>BufferPrevious<cr>", default_opts)
    -- cmd+l: last tab
    keymap("n", "<Char-0xAE>", "<cmd>BufferNext<cr>", default_opts)
    -- cmd+w: close current tab
    keymap("n", "<Char-0xAF>", "<cmd>BufferClose<cr>", default_opts)
    -- cmd+t: find file toogle 
    keymap("n", "<Char-0xA1>", "<cmd>NvimTreeFindFile<cr>", default_opts)

    -- trouble plugin:
    -- cmd+[: get troubles
    keymap("n", "<Char-0xA2>", "<cmd>Trouble<cr>", default_opts)
    -- cmd+]: close troubles
    keymap("n", "<Char-0xA3>", "<cmd>TroubleClose<cr>", default_opts)

    --copilot
    -- cmd+n: next  
    keymap('i', '<Char-0xA4>', '<Plug>(copilot-next)', default_opts)
    -- cmd+m: last  
    keymap('i', '<Char-0xA5>', '<Plug>(copilot-previous)', default_opts)

    -- cmd+1: open left bar  
    keymap('n', '<Char-0xA4>', '<cmd>NvimTreeToggle<cr>', default_opts)
EOF
