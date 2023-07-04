
""""""""""""""""""""""""""""""""""""""""""
""""""_______"""""""""/|""""""""""""""""""
"    /__  __/    _ __/ |   ___           "
"      / /____  (_) /_ |  / (_)___ ___   "
"     / // __ \/ / __/ | / / / __ `__ \  "
"    / // / / / / /__| |/ / / / / / / /  "
" __/ //_/_/_/_/\__(_)   /_/_/ /_/ / /   "
"/______/            \__/          \|    "
""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

" Loads all plugins in the vim-plug folder
source $HOME/.config/nvim/vim-plug/plugins.vim

" Loads Theme
source $HOME/.config/nvim/theme.vim

" Loads Keybindings
source $HOME/.config/nvim/keybindings.vim
 
" Loads all plugin configurations in the plug-config folder
runtime! $HOME/.config/nvim/plug-config/*.vim  

" lua config
lua require('colorizer-config')
lua require('treesitter-config')
lua require('harpoon-config')
lua require('undotree-config')

" Initialization
set nocompatible
set notimeout

set updatetime=50

" Set window title by default.
set title
set t_Co=256
set termguicolors

syntax on  

set cursorline
set cursorlineopt=number

"
set ruler
set scrolloff=8
set sidescrolloff=8

" Delete comment character when joining commented lines
set formatoptions+=j

" max undo history
set history=1000

"
set conceallevel=0  

" Remove line wrap
set nowrap
set formatoptions-=cro  

" tabspace related settings
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set autoindent  
set showtabline=2

" We don't need backup
set nobackup
set nowritebackup  

" Include - as word
set iskeyword+=-  

"
set laststatus=0

" Always focus on splited window.
set splitright
set splitbelow

" Disable output, vcs, archive, rails, temp and backup files.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*

" set number and override with relativenumber
set number
set relativenumber



" highlight matches when searching
" Use C-l to clear (see key map section)
set hlsearch

" file type recognition
filetype on
filetype plugin on
filetype indent on



" Auto start NERD tree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif

" Auto start NERD tree if no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif

" Let quit work as expected if after entering :q the only window left open is NERD Tree itself
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


