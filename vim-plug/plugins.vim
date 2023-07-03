call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " File Explorer
  Plug 'scrooloose/NERDTree'

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  " WIP
  Plug 'liuchengxu/vim-which-key'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'kosayoda/nvim-lightbulb'
  Plug 'antoinemadec/FixCursorHold.nvim'


  "
  Plug 'mhinz/vim-signify'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'

  " multi cursor
  Plug 'mg981/vim-visual-multi', {'branch': 'master'}

  " code completion | github.com/neoclide/coc.nvim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " colorized background for color codes | github.com/norcalli/nvim-colorizer.lua
  Plug 'norcalli/nvim-colorizer.lua'

  " dev icons | github.com/nvim-tree/nvim-web-devicons
  Plug 'nvim-tree/nvim-web-devicons'

call plug#end()
