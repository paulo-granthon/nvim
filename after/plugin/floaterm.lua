
-- Configuration example
vim.keymap.set("n", "<F12>", ":FloatermToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true, silent = true })

-- Set floaterm window's background to black
vim.cmd [[ hi Floaterm guibg=nil ]]
-- Set floating window border line color to cyan, and background to orange
vim.cmd [[ hi FloatermBorder guibg=nil guifg=white ]]

-- Set floaterm window foreground to gray once the cursor moves out from it
vim.cmd [[ hi FloatermNC guifg=gray ]]
