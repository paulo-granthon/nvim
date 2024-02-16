-- luacheck: globals vim

vim.g.copilot_filetypes = {
  ['*'] = true,
}

vim.g.copilot_no_tab_map = true
local opts = {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
}

vim.keymap.set('i', '<C-a>', "copilot#Accept('<CR>')", opts)
vim.keymap.set('i', '<C-x>', "copilot#Dismiss()", opts)
vim.keymap.set('i', '<C-j>', "copilot#Next()", opts)
vim.keymap.set('i', '<C-k>', "copilot#Previous()", opts)
