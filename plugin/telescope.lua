local telescope_builtin_ok, telescope_builtin_or_err = pcall(require, 'telescope.builtin')
if not telescope_builtin_ok then return telescope_builtin_or_err end

local builtin = telescope_builtin_or_err

vim.keymap.set('n', '<leader>pf', function()
  builtin.find_files({
    hidden = true,
  })
end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({
    search = vim.fn.input('Grep > '),
  })
end)

vim.keymap.set('n', '<leader>pr', function()
  builtin.grep_string({
    search = vim.fn.input('Regex > '),
    use_regex = true,
  })
end)

local util_ok, util_or_err = pcall(require, 'cfg.util')
if not util_ok then
  print('failed to import cfg.util from plugin.telescope')
else
  local util = util_or_err

  vim.keymap.set('v', '<leader>ps', function()
    builtin.grep_string({
      search = util.get_selected_text(),
      use_regex = true,
    })
  end)

  local esc_seach = vim.api.nvim_replace_termcodes('<Esc>?', true, false, true)
  local esc_find = vim.api.nvim_replace_termcodes('<Esc>:%s/', true, false, true)
  local replace = vim.api.nvim_replace_termcodes('/', true, false, true)

  vim.keymap.set('v', '?', function()
    local selected_text = util.get_selected_text()
    vim.api.nvim_feedkeys(esc_seach, 'n', false)
    vim.api.nvim_feedkeys(selected_text, 'n', false)
  end)

  vim.keymap.set('v', '<C-s>', function()
    local selected_text = util.get_selected_text()
    vim.api.nvim_feedkeys(esc_find, 'n', false)
    vim.api.nvim_feedkeys(selected_text, 'n', false)
    vim.api.nvim_feedkeys(replace, 'n', false)
  end)
end
