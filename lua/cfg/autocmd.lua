local silent = true

local oil_cmd = 'Oil'
local nrw_cmd = 'Explore'

local wrap_cmd_in_function = function(cmd)
  local silent_flag = silent and 'silent! ' or ''
  cmd = silent_flag .. cmd
  return function() vim.cmd(cmd) end
end

local add_no_file_arg_check_to_function = function(fun_of_choice)
  return function()
    local _, target_arg = pcall(function() return vim.v.argv[3] end)
    if not target_arg or target_arg == '.' then fun_of_choice() end
  end
end

local get_no_file_arg_function = function()
  local oil_ok, _ = pcall(require, 'oil')
  return add_no_file_arg_check_to_function(wrap_cmd_in_function(oil_ok and oil_cmd or nrw_cmd))
end

vim.api.nvim_create_autocmd({ 'VimEnter' }, {
  callback = vim.schedule_wrap(function()
    local vim_enter_no_arg_function = get_no_file_arg_function()
    return vim_enter_no_arg_function()
  end),
})
