local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- language support
Plug('nvim-treesitter/nvim-treesitter', {[ 'do' ] = ':TSUpdate'})
Plug('tpope/vim-surround')
--go
Plug('fatih/vim-go', { [ 'do' ] = ':GoUpdateBinaries' })
--dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

-- for debugging
-- Plug('mfussenegger/nvim-dap') 
-- Plug('rcarriga/nvim-dap-ui') 
-- Plug('leoluz/nvim-dap-go') 

-- асинхронная проверка файлов во время набора текста
Plug('neovim/nvim-lspconfig')

-- Синхронный автокомплит
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp' )
Plug('hrsh7th/cmp-nvim-lsp-signature-help')

-- comment plugin
Plug('numToStr/Comment.nvim')

-- Темы
Plug('morhetz/gruvbox')
Plug('rebelot/kanagawa.nvim')
Plug('uloco/bluloco.nvim')
Plug('rktjmp/lush.nvim')
Plug('folke/tokyonight.nvim')
Plug('rafi/awesome-vim-colorschemes')

-- Вкладки файлов
Plug('romgrk/barbar.nvim')
-- for file icons
Plug('kyazdani42/nvim-web-devicons')

-- Дерево файлов
Plug('kyazdani42/nvim-tree.lua')

-- Telescope
Plug('nvim-lua/plenary.nvim') --for fzf
Plug('nvim-telescope/telescope.nvim', { [ 'tag' ] = '0.1.4' })
Plug('ibhagwan/fzf-lua', {['branch'] = 'main'})

-- Автоматическое закрытие скобок
Plug('jiangmiao/auto-pairs')

-- Строка статуса
Plug('nvim-lualine/lualine.nvim')

-- история гита
Plug('f-person/git-blame.nvim')

-- подсветка ошибок
Plug('folke/trouble.nvim')

Plug('mg979/vim-visual-multi', {[ 'branch' ] = 'master'})

-- плагины для работы с тестами
Plug('fredrikaverpil/neotest-golang')
Plug('nvim-lua/plenary.nvim')
Plug('antoinemadec/FixCursorHold.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-neotest/nvim-nio')
Plug('nvim-neotest/neotest')

Plug('rmagatti/auto-session')
Plug('akinsho/git-conflict.nvim')

Plug('nvimdev/lspsaga.nvim')

vim.call('plug#end')

local home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require"common" -- +
require"theme" -- +
require"barbar" -- +
require"vimtree" -- +
require"treesitter" -- +
require"lualine" -- +
require"lsp" -- +
require"cmp_config" -- +
require"combinations" -- +
require"autosession" -- +
require"telescope_config" -- +
require"comment_config" -- +
require"trouble_config" -- +
require"gsigns"
require"gitconflicts"

require"neotest_config"
require"copilot"
require"lspsagaplug"
--require"lazy_cfg"

-- source $HOME/.config/nvim/tabs.vim
-- source $HOME/.config/nvim/debugger.vim

