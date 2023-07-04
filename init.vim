"     _______         /|
"    /__  __/    _ __/ |   ___         
"      / /____  (_) /_ |  / (_)___ ___ 
"     / // __ \/ / __/ | / / / __ `__ \
"    / // / / / / /__| |/ / / / / / / /
" __/ //_/_/_/_/\__(_)   /_/_/ /_/ / / 
"/______/            \__/          \|


" Loads all plugins in the vim-plug folder
source $HOME/.config/nvim/vim-plug/plugins.vim

" Loads Theme
source $HOME/.config/nvim/theme.vim

" Loads Keybindings
source $HOME/.config/nvim/keybindings.vim
 
" Loads all plugin configurations in the plug-config folder
runtime! $HOME/.config/nvim/plug-config/*.vim  

" lua plugins
lua require('colorizer-config')

" Initialization
set nocompatible
set notimeout

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

" Toggle relative line number. Default on set relativenumber
set relativenumber
nmap <C-L><C-L> :set invrelativenumber<CR>

" Keybindings
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Accept CoC suggestion with Enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Visually select the text that was last edited/pasted (Vimcast#26).
noremap gV `[v`]


