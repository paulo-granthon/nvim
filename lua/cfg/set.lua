-- luacheck: globals vim

-- Shows the number of lines up or down from the current line
vim.opt.relativenumber = true
vim.opt.nu = true -- Shows the "normal" line number for the current line

-- Key sequence timeout
vim.opt.timeoutlen = 500

-- Tab behavior
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Always display tab characters
vim.o.showtabline = 2

-- Linux `tab` behavior in command line: Complete the longest common string first
vim.opt.wildmode = {'list:longest', 'full'}
vim.opt.wildmenu = true -- Show the list of completions in a menu

-- Auto indent in some cases
vim.opt.smartindent = true

-- Line wrapping
vim.opt.wrap = false

-- Highlight search results
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Better colors
vim.opt.termguicolors = true

-- Padding when navigating the buffer
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Show the sign column with width of 1
vim.opt.signcolumn = 'yes:1'
vim.opt.isfname:append('@-@')

-- More frequent swap file writes
vim.opt.updatetime = 50

-- Replace end of buffer character
vim.opt.fillchars:append('eob:·')

-- Set the title of the terminal to the file name
vim.o.title = true
