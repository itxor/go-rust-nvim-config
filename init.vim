call plug#begin()
" Поддержка языка
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" GO-oтладчик
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'

" Синхронный автокомплит
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp' 
Plug 'nvim-lua/completion-nvim'

" Темы
Plug 'morhetz/gruvbox'  " colorscheme gruvbox
Plug 'mhartington/oceanic-next'  " colorscheme OceanicNext
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'xiyaowong/nvim-transparent'
Plug 'lifepillar/vim-solarized8'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'rakr/vim-one'


" Вкладки файлов
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons

" Дерево файлов
Plug 'kyazdani42/nvim-tree.lua'

" Telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Автоматическое закрытие скобок
Plug 'jiangmiao/auto-pairs'

" Строка статуса
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" история гита
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Plugin manager
Plug 'williamboman/mason.nvim'

" Изи биндинг комбинаций
Plug 'folke/which-key.nvim'

call plug#end()

source $HOME/.config/nvim/barbar.vim
source $HOME/.config/nvim/common.vim
source $HOME/.config/nvim/cmp.vim
source $HOME/.config/nvim/gitsigns.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/lualine.vim
source $HOME/.config/nvim/tabs.vim
source $HOME/.config/nvim/vimtree.vim
source $HOME/.config/nvim/treesitter.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/theme.vim
source $HOME/.config/nvim/combinations.vim
source $HOME/.config/nvim/mason.vim
source $HOME/.config/nvim/debugger.vim
source $HOME/.config/nvim/which-key.vim
