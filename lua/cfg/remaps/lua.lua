-- source the current file
vim.keymap.set('n', '<leader>s', '<cmd>source %<CR>')

-- execute the lua code in the current line
vim.keymap.set('n', '<leader>e', ':.lua<CR>')

-- execute the lua code in the current visual selection
vim.keymap.set('v', '<leader>e', ':lua<CR>')
