-- vim-plug configuration for markview.nvim
-- Add this to your vim-plug section:
-- Plug 'OXY2DEV/markview.nvim'

-- Configuration
require('markview').setup({
  preview = {
    filetypes = { "markdown", "codecompanion" },
    ignore_buftypes = {},
  },
})


