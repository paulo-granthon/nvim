local M = {}

function M.get_selection_text_by_line()
  local _, ls, cs = unpack(vim.fn.getpos('v'))
  local _, le, ce = unpack(vim.fn.getpos('.'))

  if ls > le or (ls == le and cs > ce) then
    ls, cs, le, ce = le, ce, ls, cs
  end

  return vim.api.nvim_buf_get_text(0, ls - 1, cs - 1, le - 1, ce, {})
end

function M.get_selected_text()
  local selected_text_table = M.get_selection_text_by_line()
  return table.concat(selected_text_table, '\n')
end

return M
