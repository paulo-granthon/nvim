vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.opt.swapfile = false
vim.opt.backup = false
if package.config:sub(1,1) == '\\' then
    vim.opt.undodir = os.getenv("LOCALAPPDATA") .. "\\.vim\\undodir" -- Windows
else
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Linux
end

vim.opt.undofile = true
