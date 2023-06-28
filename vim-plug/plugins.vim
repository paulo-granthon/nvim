call plug#begin('~/.config/nvim/autoload/plugged')

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " File Explorer
  Plug 'scrooloose/NERDTree'
  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  Plug 'liuchengxu/vim-which-key'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'kosayoda/nvim-lightbulb'
  Plug 'antoinemadec/FixCursorHold.nvim'
  
  " coc
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " github.com/norcalli/nvim-colorizer.lua
  Plug 'norcalli/nvim-colorizer.lua'

  " github.com/nvim-tree/nvim-web-devicons
  Plug 'nvim-tree/nvim-web-devicons'

call plug#end()
