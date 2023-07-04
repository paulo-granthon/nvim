call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  " File Explorer
  Plug 'scrooloose/NERDTree'

  " Terminal 
  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " File and Directory finder
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }

  " Easy comments				TODO: Needs custom keybindings
  Plug 'numToStr/Comment.nvim'

  " UI Component Library for Neovim.
  Plug 'MunifTanjim/nui.nvim'

  " WIP
  Plug 'liuchengxu/vim-which-key'
  Plug 'kosayoda/nvim-lightbulb'
  Plug 'antoinemadec/FixCursorHold.nvim'


  " Git integration
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'sindrets/diffview.nvim'


  " multi cursor
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " code completion | github.com/neoclide/coc.nvim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " colorized background for color codes | github.com/norcalli/nvim-colorizer.lua
  Plug 'norcalli/nvim-colorizer.lua'

  " dev icons | github.com/nvim-tree/nvim-web-devicons
  Plug 'nvim-tree/nvim-web-devicons'

call plug#end()



" Additional plugin setup
lua require("toggleterm").setup()
lua require('Comment').setup()
