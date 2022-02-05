call plug#begin()
" Вкладки файлов
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons

" Дерево файлов
Plug 'kyazdani42/nvim-tree.lua'

" Поддержка языка
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Синхронный автокомплит
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Автоматическое закрытие скобок
Plug 'jiangmiao/auto-pairs'

" Строка статуса
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" Набор тем
Plug 'projekt0n/github-nvim-theme'

" история гита
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" автоформатирование кода
Plug 'sbdchd/neoformat'

" дебаг
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'

call plug#end()

source $HOME/.config/nvim/barbar.vim
source $HOME/.config/nvim/cmp.vim
source $HOME/.config/nvim/common.vim
source $HOME/.config/nvim/github-themes.vim
source $HOME/.config/nvim/gitsigns.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/lualine.vim
source $HOME/.config/nvim/tabs.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/treesitter.vim
source $HOME/.config/nvim/vimtree.vim
source $HOME/.config/nvim/neoformat.vim
source $HOME/.config/nvim/nvim-dap.vim

lua <<EOF
require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})
EOF
