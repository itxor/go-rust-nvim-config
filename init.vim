 call plug#begin()
" Поддержка языка
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-surround'

" for go supporting
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" for debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'leoluz/nvim-dap-go'

" асинхронная проверка файлов во время набора текста
Plug 'dense-analysis/ale'
Plug 'neovim/nvim-lspconfig'
Plug 'mattn/emmet-vim'
"авто-сессии
Plug 'rmagatti/auto-session'

" Синхронный автокомплит
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp' 
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

" comment plugin
Plug 'numToStr/Comment.nvim'

" Темы
Plug 'rebelot/kanagawa.nvim'
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
Plug 'sainnhe/gruvbox-material'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'ribru17/bamboo.nvim'
Plug 'savq/melange-nvim' 
Plug 'folke/lsp-colors.nvim'

" Вкладки файлов
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons

" Дерево файлов
Plug 'kyazdani42/nvim-tree.lua'

" Telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
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
Plug 'f-person/git-blame.nvim'

" подсветка ошибок
Plug 'folke/trouble.nvim'

" wakatime
Plug 'wakatime/vim-wakatime'

" resolve git conflicts
Plug 'akinsho/git-conflict.nvim'

" If you don't have nodejs and yarn
" use pre build, add 'vim-plug' to the filetype list so vim-plug can update this plugin
" see: https://github.com/iamcco/markdown-preview.nvim/issues/50
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" If you have nodejs
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

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
source $HOME/.config/nvim/copilot.vim
source $HOME/.config/nvim/auto-sessions.vim
source $HOME/.config/nvim/trouble.vim
source $HOME/.config/nvim/comment.vim
source $HOME/.config/nvim/git_conflicts.vim
source $HOME/.config/nvim/debugger.vim

