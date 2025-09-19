-- panel_stack.lua
local M = {}

-- Configurable max capacity
M.max_capacity = 10
M.stack = {}

-- Helper: save current window/buffer info
local function save_panel()
  local bufnr = vim.api.nvim_get_current_buf()
  local winid = vim.api.nvim_get_current_win()
  local row, col = unpack(vim.api.nvim_win_get_cursor(winid))
  local layout = vim.fn.winlayout() -- layout info

  -- Save buffer and cursor position
  table.insert(M.stack, {
    bufnr = bufnr,
    row = row,
    col = col,
    layout = layout,
  })

  -- Enforce max capacity
  if #M.stack > M.max_capacity then table.remove(M.stack, 1) end
end

-- Reopen last closed panel
function M.reopen_panel()
  if #M.stack == 0 then
    print('No closed panels in stack')
    return
  end

  local panel = table.remove(M.stack)
  -- Open buffer in a new split (you could tweak to restore original layout)
  vim.cmd('split')
  vim.api.nvim_set_current_buf(panel.bufnr)
  vim.api.nvim_win_set_cursor(0, { panel.row, panel.col })
end

-- Setup autocmd to catch closed windows
function M.setup(opts)
  if opts and opts.max_capacity then M.max_capacity = opts.max_capacity end

  -- Autocmd: on BufWinLeave, save the buffer info
  vim.api.nvim_create_autocmd('WinClosed', {
    pattern = '*',
    callback = function()
      -- Only save if buffer still exists (avoid saving ephemeral windows like quickfix)
      if vim.api.nvim_buf_is_valid(vim.api.nvim_get_current_buf()) then save_panel() end
    end,
  })
end

-- Create a user command
vim.api.nvim_create_user_command('ReopenPanel', function() M.reopen_panel() end, {})

-- Create a keybinding
vim.keymap.set('n', '<leader>rp', ':ReopenPanel<CR>', { noremap = true, silent = true })

return M
