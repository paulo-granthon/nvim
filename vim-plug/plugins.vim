call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " File Explorer
  Plug 'scrooloose/NERDTree'

  " Status bar - Airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'mbbill/undotree' 

  " LSP Support
  Plug 'neovim/nvim-lspconfig'                           " Required
  Plug 'williamboman/mason.nvim', {'do': ':MasonUpdate'} " Optional
  Plug 'williamboman/mason-lspconfig.nvim'               " Optional

  " Autocompletion
  Plug 'hrsh7th/nvim-cmp'     " Required
  Plug 'hrsh7th/cmp-nvim-lsp' " Required
  Plug 'L3MON4D3/LuaSnip'     " Required

  Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v2.x'}

  " Terminal 
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " File and Directory finder
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
  Plug 'ThePrimeagen/harpoon'

  " Easy comments				TODO: Needs custom keybindings
  Plug 'numToStr/Comment.nvim'

  " UI Component Library for Neovim.
  Plug 'MunifTanjim/nui.nvim'

  " WIP
  Plug 'liuchengxu/vim-which-key'
  Plug 'kosayoda/nvim-lightbulb'
  Plug 'antoinemadec/FixCursorHold.nvim'

  " VSCode style minimap overlay
  Plug 'echasnovski/mini.map'

  " Git integration
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'sindrets/diffview.nvim'
  Plug 'airblade/vim-rooter'

  " multi cursor
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " colorized background for color codes | github.com/norcalli/nvim-colorizer.lua
  Plug 'norcalli/nvim-colorizer.lua'

  " dev icons | github.com/nvim-tree/nvim-web-devicons
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'ryanoasis/vim-devicons'

set encoding=UTF-8
call plug#end()



" Additional plugin setup
lua require("toggleterm").setup()
lua require('Comment').setup()
