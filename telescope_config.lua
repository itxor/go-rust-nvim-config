local keymap = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", default_opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", default_opts)

require('telescope').load_extension('fzf')
