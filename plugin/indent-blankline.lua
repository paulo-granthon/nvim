-- luacheck: globals vim

vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append('trail: ')

vim.cmd([[highlight IndentBlanklineContextChar guifg=#C678DD gui=nocombine]])
vim.cmd([[highlight IndentBlanklineContextStart guisp=#C678DD gui=underline]])

require('ibl').setup({
  scope = {
    enabled = true,
    show_start = true,
  },
})
