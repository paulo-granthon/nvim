vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- disable backup & set undodir
vim.opt.swapfile = false
vim.opt.backup = false
if package.config:sub(1,1) == '\\' then
    vim.opt.undodir = os.getenv('LOCALAPPDATA') .. '\\.vim\\undodir' -- Windows
else
    vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir' -- Linux
end
vim.opt.undofile = true

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
