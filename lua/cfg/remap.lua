-----------------------------,-------------
--     _______     _ __  _   /|_          -
--    /__  __/__  (_) /_| | / (_)___ ___  -
--      / // __ \/ / __/| |/ / / __ `__ \ -
--     / // / / / / /_ _| ` / / / / / / / -
--  __/ //_/_/_/_/\__/(_)  /_/_/ /_/ / /  -
-- /______/             | /          \|   -
------------------------|/-----------------
-------------------------------------------

-- <Space> leader
vim.g.mapleader = " "

-- Easy netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Replace every instance of word at cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Toggle relativenumber - number
vim.keymap.set("n", "<C-L><C-L>", ":set invrelativenumber<CR>")

-- Better Esc in insert mode
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

-- Better tabbing in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

