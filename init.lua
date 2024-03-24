local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- language support
Plug('nvim-treesitter/nvim-treesitter', {[ 'do' ] = ':TSUpdate'})
--Plug('fatih/vim-go', { [ 'do' ] = ':GoUpdateBinaries' }) 
--Plug('tpope/vim-surround') 

-- for debugging
--Plug('mfussenegger/nvim-dap') 
--Plug('rcarriga/nvim-dap-ui') 
--Plug('leoluz/nvim-dap-go') 

-- асинхронная проверка файлов во время набора текста
--Plug('dense-analysis/ale')
Plug('neovim/nvim-lspconfig')
--Plug('mattn/emmet-vim')

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
Plug('rebelot/kanagawa.nvim')

-- Вкладки файлов
Plug('romgrk/barbar.nvim')
-- for file icons
Plug('kyazdani42/nvim-web-devicons')

-- Дерево файлов
Plug('kyazdani42/nvim-tree.lua')

-- Telescope
Plug('nvim-lua/plenary.nvim') --for fzf
Plug('nvim-telescope/telescope.nvim', { [ 'tag' ] = '0.1.4' })
Plug('nvim-telescope/telescope-fzf-native.nvim', { [ 'do' ] = 'make' })

-- For vsnip users.
--Plug('hrsh7th/cmp-vsnip') 
--Plug('hrsh7th/vim-vsnip') 

-- Автоматическое закрытие скобок
--Plug('jiangmiao/auto-pairs') 

-- Строка статуса
Plug('nvim-lualine/lualine.nvim')

-- история гита
Plug('lewis6991/gitsigns.nvim')
--Plug('f-person/git-blame.nvim') 

-- подсветка ошибок
Plug('folke/trouble.nvim')

--Plug('mg979/vim-visual-multi', {[ 'branch' ] = 'master'}) 

vim.call('plug#end')

local home=os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require"common"
require"theme"
require"barbar"
require"vimtree"
require"treesitter"
require"lualine"
require"lsp"
require"cmp_config"

-- part 2
require"combinations"
require"copilot"
require"gitsigns"
require"comment_config"
require"telescope_config"
require"trouble_config"

-- source $HOME/.config/nvim/tabs.vim
-- source $HOME/.config/nvim/debugger.vim

