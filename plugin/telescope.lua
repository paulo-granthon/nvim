local telescope_builtin_ok, telescope_builtin_or_err = pcall(require, 'telescope.builtin')
if not telescope_builtin_ok then return telescope_builtin_or_err end

local builtin = telescope_builtin_or_err

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({
    search = vim.fn.input('Grep > '),
  })
end)

vim.keymap.set('n', '<leader>pr', function()
  builtin.grep_string({
    search = vim.fn.input('Grep > '),
    use_regex = true,
  })
end)

local function get_selection_text_by_line()
  local _, ls, cs = unpack(vim.fn.getpos('v'))
  local _, le, ce = unpack(vim.fn.getpos('.'))

  if ls > le or (ls == le and cs > ce) then
    ls, cs, le, ce = le, ce, ls, cs
  end

  return vim.api.nvim_buf_get_text(0, ls - 1, cs - 1, le - 1, ce, {})
end

local function get_selected_text()
  local selected_text_table = get_selection_text_by_line()
  return table.concat(selected_text_table, '\n')
end

end)
