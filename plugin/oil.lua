local oil_ok, oil_or_err = pcall(require, 'oil')
if not oil_ok then return oil_or_err end
local oil = oil_or_err

oil.setup({
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
  },
})

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

--- function to open given parameter with Oil.
--- @param path? string The path to open with Oil
--- @return boolean
local function open_with_oil(path)
  if not path then
    vim.cmd('Oil')
    return true
  end

  local directory = path

  --apend '/' if path is missing it and it's not a file
  if not vim.endswith(directory, '/') then
    if vim.fn.filereadable(directory) == 0 then
      directory = directory .. '/'
    else
      directory = vim.fn.fnamemodify(path, ':h')
    end
  end

  --prepend directory with pwd if it's not an absolute path or ~/...
  if not vim.startswith(directory, '/') and not vim.startswith(directory, '~') then
    local directory_full_path = vim.fn.getcwd() .. '/' .. directory
    directory = vim.fn.fnamemodify(directory_full_path, ':p')
  end

  if vim.fn.isdirectory(directory) == 0 then return false end

  --check if directory exists
  if vim.fn.filereadable(directory) == 1 then directory = vim.fn.fnamemodify(directory, ':h') end

  vim.cmd('Oil ' .. directory)
  return true
end

--- function to handle the '%' argument when calling Ex
--- @return boolean
local handle_percent_arg = function()
  local current_buffer = vim.fn.expand('%')

  if current_buffer == '' then return false end

  if vim.startswith(current_buffer, 'oil://') then
    return true -- already in oil
  end

  if vim.fn.filereadable(current_buffer) == 1 then
    open_with_oil()
    return true -- no need to do anything
  end

  return open_with_oil(current_buffer)
end

--- function to handle the argument when calling Ex
--- @param path string The path to open with Oil
--- @return boolean
local handle_oil_arg = function(path)
  if path == '%' then
    if not handle_percent_arg() then return open_with_oil('.') end
  end
  return open_with_oil(path)
end

--- function to use `:Oil` as `:Ex`
--- @param opts table The options passed to the command
local oil_as_ex = function(opts)
  if #opts.fargs > 0 then
    handle_oil_arg(opts.fargs[1])
  else
    handle_oil_arg('%')
  end
end

-- create the Ex command
vim.api.nvim_create_user_command('Ex', oil_as_ex, { nargs = '?' })
