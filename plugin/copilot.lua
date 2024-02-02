-- luacheck: globals vim

vim.g.copilot_filetypes = {
    ["*"] = true,
}

vim.g.copilot_no_tab_map = true
vim.keymap.set(
    'i', '<C-a>', "copilot#Accept('<CR>')",
    { noremap = true, silent = true, expr = true, replace_keycodes = false }
)

-- <C-]>                   Dismiss the current suggestion.
-- <Plug>(copilot-dismiss)
--
--                                                 *copilot-i_ALT-]*
-- <M-]>                   Cycle to the next suggestion, if one is available.
-- <Plug>(copilot-next)
--
--                                                 *copilot-i_ALT-[*
-- <M-[>                   Cycle to the previous suggestion.
-- <Plug>(copilot-previous)
