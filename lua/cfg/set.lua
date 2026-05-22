-- Shows the number of lines up or down from the current line
vim.opt.relativenumber = true
vim.opt.nu = true -- Shows the "normal" line number for the current line

-- disable cursor blink
vim.opt.guicursor = 'a:blinkon0'

-- Key sequence timeout
vim.opt.timeoutlen = 500

-- Tab behavior
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Always display tab characters
vim.o.showtabline = 2

-- Indentation
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Line wrapping
vim.opt.wrap = false

-- Padding when navigating the buffer
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 16

-- Show the sign column with width of 1
vim.opt.signcolumn = 'yes:1'
vim.opt.isfname:append('@-@')

-- More frequent swap file writes
vim.opt.updatetime = 50

-- Replace end of buffer character
vim.opt.fillchars:append('eob:·')

-- Set the title of the terminal to the file name
vim.o.title = true

vim.opt.completeopt = "menuone,noinsert,noselect" -- Completion options

-- Visual
vim.opt.termguicolors = true -- Better colors
vim.opt.colorcolumn = '' -- Show column(s) at specified position(s)
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- Show matching brackets for 2 tenths of a second
vim.opt.pumblend = 10 -- Popup blend for floating windows (e.g., completion menu)
vim.opt.winblend = 0 -- Window blend for floating windows
vim.opt.lazyredraw = true -- Don't redraw while executing macros or complex commands
vim.opt.redrawtime = 10000 -- Limit redraw time for complex syntax highlighting
vim.opt.synmaxcol = 300 -- Limit syntax highlighting for performance on long lines

-- Grep / Search
vim.opt.grepprg = 'rg --vimgrep --smart-case --hidden' -- Use ripgrep for :grep if available
vim.opt.grepformat = '%f:%l:%c:%m' -- Filename, line number, column, content
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Show matches as you type
vim.opt.maxmempattern = 500000 -- Increase max memory for pattern searching (e.g., for regexes)

-- Files
vim.opt.backup = false -- Don't create backup files
vim.opt.writebackup = false -- Don't create backup files while writing
vim.opt.swapfile = false -- Don't create swap files
vim.opt.undofile = true -- Enable persistent undo
vim.opt.updatetime = 300 -- Time in ms to trigger CursorHold event (used by some plugins)
vim.opt.timeoutlen = 500 -- Time in ms to wait for a mapped sequence to complete
vim.opt.ttimeoutlen = 0 -- Time in ms to wait for a key code sequence to complete (e.g., for escape sequences)
vim.opt.autoread = true -- Automatically read files when they change on disk
vim.opt.autowrite = false -- Automatically write files when switching buffers or exiting
vim.opt.diffopt:append('vertical') -- Show diffs in vertical splits
vim.opt.diffopt:append("algorithm:patience") -- Use the "patience" diff algorithm for better diffs
vim.opt.diffopt:append("linematch:60") -- Use line matching for better diffs on long lines

-- Behavior
vim.opt.errorbells = false -- Don't make a sound on errors
vim.opt.backspace = 'indent,eol,start' -- Allow backspacing over everything in insert mode
vim.opt.autochdir = false -- Don't change the working directory automatically
-- vim.opt.iskeyword:remove('_') -- Don't consider underscores as part of a word
-- vim.opt.iskeyword:remove('-') -- Don't consider hyphens as part of a word
vim.opt.iskeyword:append('_') -- Consider underscores as part of a word
vim.opt.iskeyword:append('-') -- Consider hyphens as part of a word
vim.opt.selection = 'inclusive' -- Include the last character in visual selection
vim.opt.modifiable = true -- Allow modifications on all buffers
vim.opt.encoding = 'utf-8' -- Use UTF-8 encoding
vim.opt.wildmenu = true -- Show the list of completions in a menu
vim.opt.wildmode = "longest:full,full" -- Complete the longest common prefix, then show the full list
vim.opt.wildignorecase = true -- Ignore case when completing file names and directories

-- Folds
vim.opt.foldmethod = 'expr' -- Use an expression to define folds
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()' -- Use Tree-sitter for folding
vim.opt.foldlevel = 99 -- Kepp all folds open by default
