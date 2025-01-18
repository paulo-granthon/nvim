local treesj_ok, treesj_or_err = pcall(require, 'treesj')
if not treesj_ok then return print(treesj_or_err .. '\n\n' .. debug.traceback()) end

local treesj = treesj_or_err

treesj.setup({
  ---@type boolean Use default keymaps (<space>m - toggle, <space>j - join, <space>s - split)
  use_default_keymaps = false,
  ---@type boolean Node with syntax error will not be formatted
  check_syntax_error = false,
  ---If line after join will be longer than max value,
  ---@type number If line after join will be longer than max value, node will not be formatted
  max_join_length = 512,
  ---Cursor behavior:
  ---hold - cursor follows the node/place on which it was called
  ---start - cursor jumps to the first symbol of the node being formatted
  ---end - cursor jumps to the last symbol of the node being formatted
  ---@type 'hold'|'start'|'end'
  cursor_behavior = 'hold',
  ---@type boolean Notify about possible problems or not
  notify = true,
  ---@type boolean Use `dot` for repeat action
  dot_repeat = false,
  ---@type nil|function Callback for treesj error handler. func (err_text, level, ...other_text)
  on_error = nil,
  ---@type table Presets for languages
  -- langs = {}, -- See the default presets in lua/treesj/langs
})

-- toggle
vim.keymap.set('n', '<leader>tso', vim.cmd.TSJToggle)

-- split
vim.keymap.set('n', '<leader>tsj', vim.cmd.TSJSplit)

-- join
vim.keymap.set('n', '<leader>tsk', vim.cmd.TSJJoin)

-- toggle recursive
vim.keymap.set('n', '<leader>tsO', function()
  treesj.toggle({ split = { recursive = true } }) --
end)

-- split recursive
vim.keymap.set('n', '<leader>tsJ', function()
  treesj.split({ split = { recursive = true } }) --
end)
