vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-e>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

vim.keymap.set('i', '<c-l>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<c-\\>', '<Plug>(copilot-next)')

