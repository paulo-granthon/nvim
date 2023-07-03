"     _______         /|
"    /__  __/    _ __/ |   ___         
"      / /____  (_) /_ |  / (_)___ ___ 
"     / // __ \/ / __/ | / / / __ `__ \
"    / // / / / / /__| |/ / / / / / / /
" __/ //_/_/_/_/\__(_)   /_/_/ /_/ / / 
"/______/            \__/          \|


" Loads all plugins in the vim-plug folder
source $HOME/.config/nvim/vim-plug/plugins.vim

" Loads all plugin configurations in the plug-config folder
runtime! ~/.config/nvim/plug-config/*.vim  

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

" Disable output, vcs, archive, rails, temp and backup files.
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*.swp,*~,._*



if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

" General colors
hi  Normal        ctermfg=252  ctermbg=234    cterm=none     guifg=#EFE0F7  guibg=none     gui=none	
hi  Cursor        ctermfg=234  ctermbg=228    cterm=none     guifg=#242424  guibg=#eae788  gui=none
hi  Visual        ctermfg=251  ctermbg=239    cterm=none     guifg=#c3c6ca  guibg=#554d4b  gui=none
hi  VisualNOS     ctermfg=251  ctermbg=236    cterm=none     guifg=#c3c6ca  guibg=#303030  gui=none
hi  Search        ctermfg=177  ctermbg=241    cterm=none     guifg=#ff0033  guibg=#BFB700  gui=none blend=50
hi  Folded        ctermfg=103  ctermbg=237    cterm=none     guifg=#a0a8b0  guibg=#3a4046  gui=none
hi  Title         ctermfg=230  cterm=bold     guifg=#ffffd7  guibg=#000000  gui=bold
hi  StatusLine    ctermfg=230  ctermbg=238    cterm=none     guifg=#ffffd7  guibg=#444444  gui=italic
hi  VertSplit     ctermfg=238  ctermbg=238    cterm=none     guifg=#444444  guibg=#444444  gui=none
hi  StatusLineNC  ctermfg=241  ctermbg=238    cterm=none     guifg=#857b6f  guibg=#444444  gui=none
hi  LineNr        ctermfg=241  ctermbg=232    cterm=none     guifg=#857b6f  guibg=#080808  gui=none term=none
hi  SpecialKey    ctermfg=241  ctermbg=235    cterm=none     guifg=#626262  guibg=#2b2b2b  gui=none
hi  WarningMsg    ctermfg=203  guifg=#ff5f55
hi  ErrorMsg      ctermfg=196  ctermbg=234    cterm=bold     guifg=#e3e0d7  guibg=#3a3a3a  gui=bold
hi  SpellBad      ctermfg=196  ctermbg=234    cterm=bold     guifg=#e3e0d7  guibg=#3a3a3a  gui=bold
hi  SpellCap      ctermfg=196  ctermbg=234    cterm=bold     guifg=#e3e0d7  guibg=#3a3a3a  gui=bold

hi  CursorLine    ctermbg=236  cterm=none   guibg=#32322f
hi  CursorLineNr  ctermbg=234  cterm=none   guibg=#242424  gui=none
hi  MatchParen    ctermfg=228  ctermbg=101  cterm=bold     guifg=#eae788  guibg=#857b6f  gui=bold
hi  Pmenu         ctermfg=230  ctermbg=238  guifg=#ffffd7  guibg=#444444
hi  PmenuSel      ctermfg=232  ctermbg=192  guifg=#080808  guibg=#cae982

" Diff highlighting
hi  DiffAdd     ctermbg=17   guibg=#2a0d6a
hi  DiffDelete  ctermfg=234  ctermbg=60     cterm=none     guifg=#242424  guibg=#3e3969  gui=none
hi  DiffText    ctermbg=53   cterm=none     guibg=#73186e  gui=none
hi  DiffChange  ctermbg=237  guibg=#382a37

" CoC
" For Types hint
hi CocInlayHint ctermfg=0
