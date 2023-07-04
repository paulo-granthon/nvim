local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<Leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.ui.nav_file(4) end)


