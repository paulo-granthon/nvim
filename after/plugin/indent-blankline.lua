vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append 'trail: '

vim.cmd [[highlight IndentBlanklineContextChar guifg=#C678DD gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextStart guisp=#C678DD gui=underline]]

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,

    show_trailing_blankline_indent = true,
}

