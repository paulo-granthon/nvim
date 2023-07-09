
-- set line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab size
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- disable line wrap
vim.opt.wrap = false

-- disable backup & set undodir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- disable searh highlights and enable incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- good colors
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- replace end of buffer character
vim.opt.fillchars:append('eob:·')

-- always display tabs
vim.o.showtabline = 2

vim.o.title = true
