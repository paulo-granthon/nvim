-- luacheck: globals vim

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.timeoutlen = 500

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wildmode = {'list:longest', 'full'}
vim.opt.wildmenu = true -- Show the list of completions in a menu

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.signcolumn = 'yes:1'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50

-- replace end of buffer character
vim.opt.fillchars:append('eob:·')

-- always display tab characters
vim.o.showtabline = 2

vim.o.title = true
