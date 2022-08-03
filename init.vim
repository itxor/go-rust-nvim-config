call plug#begin()

" Поддержка языка
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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

" Автосохранение
Plug 'Pocco81/AutoSave.nvim'

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
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" история гита
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" php cs fixer
Plug 'stephpy/vim-php-cs-fixer'

" SQL
Plug 'lighttiger2505/sqls.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

" set background=light
" colorscheme solarized8
" colorscheme gruvbox
syntax on
set t_Co=256
set cursorline
colorscheme onehalflight
let g:airline_theme='onehalfdark'
" colorscheme material
" colorscheme ayu
if (has('termguicolors'))
  set termguicolors
endif

source $HOME/.config/nvim/barbar.vim
source $HOME/.config/nvim/cmp.vim
source $HOME/.config/nvim/common.vim
source $HOME/.config/nvim/gitsigns.vim
source $HOME/.config/nvim/lsp.vim
source $HOME/.config/nvim/lualine.vim
source $HOME/.config/nvim/tabs.vim
source $HOME/.config/nvim/vimtree.vim
source $HOME/.config/nvim/treesitter.vim
source $HOME/.config/nvim/autosave.vim
source $HOME/.config/nvim/telescope.vim
source $HOME/.config/nvim/php_cs_fixer.vim
source $HOME/.config/nvim/sql.vim
