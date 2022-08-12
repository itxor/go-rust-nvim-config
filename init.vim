call plug#begin()
" Поддержка языка
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

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

" php cs fixer
Plug 'stephpy/vim-php-cs-fixer'

" SQL
Plug 'lighttiger2505/sqls.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'Pocco81/auto-save.nvim'

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
source $HOME/.config/nvim/php_cs_fixer.vim
source $HOME/.config/nvim/sql.vim
source $HOME/.config/nvim/theme.vim


lua << EOF
    require("auto-save").setup {
        enable=true,
    }
EOF
