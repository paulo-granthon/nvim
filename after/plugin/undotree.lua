vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.opt.swapfile = false
vim.opt.backup = false
if not package.config:sub(1,1) == '\\' then
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Linux
else
    vim.opt.undodir = os.getenv("LOCALAPPDATA") .. "\\.vim\\undodir" -- Windows
end

vim.opt.undofile = true

vim.opt.incsearch = true


