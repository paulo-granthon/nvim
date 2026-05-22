local silent = true

local oil_cmd = 'Oil'
local nrw_cmd = 'Explore'

-- Wrap given command in a function that can be called by an autocmd callback
local wrap_cmd_in_function = function(cmd)
  local silent_flag = silent and 'silent! ' or ''
  cmd = silent_flag .. cmd
  return function() vim.cmd(cmd) end
end

-- Add a check to the given function to only execute if no file argument is provided (or if the argument is '.')
local add_no_file_arg_check_to_function = function(fun_of_choice)
  return function()
    local _, target_arg = pcall(function() return vim.v.argv[3] end)
    if not target_arg or target_arg == '.' then fun_of_choice() end
  end
end

-- Get the function to execute on VimEnter, checking for oil first and falling back to netrw if oil is not available
local get_no_file_arg_function = function()
  local oil_ok, _ = pcall(require, 'oil')
  return add_no_file_arg_check_to_function(wrap_cmd_in_function(oil_ok and oil_cmd or nrw_cmd))
end

-- ============================================================================
-- Autocommands
-- ============================================================================

-- On VimEnter, if no file argument is provided, open the file explorer
-- (Oil if available, otherwise netrw)
vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  callback = vim.schedule_wrap(function()
    local vim_enter_no_arg_function = get_no_file_arg_function()
    return vim_enter_no_arg_function()
  end),
})
