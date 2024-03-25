-- Use vim.keymap.set instead of vim.api.nvim_set_keymap
local keymap = vim.keymap.set

-- Map <leader>f to fzf-lua's file search
keymap("n", "<leader>f", require("fzf-lua").files, { desc = "Fzf files" })

-- Map <leader>g to fzf-lua's live grep
keymap("n", "<leader>g", require("fzf-lua").live_grep, { desc = "Fzf live grep" })
