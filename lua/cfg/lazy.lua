local lazy_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazy_path) then
  local lazy_repo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable', -- latest stable release
    lazy_repo,
    lazy_path,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
      { out, 'WarningMsg' },
      { '\nPress any key to exit...' },
    }, true, {})

    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazy_path)

local lazy_ok, lazy_or_err = pcall(require, 'lazy')
if not lazy_ok then return print(lazy_or_err .. '\n\n' .. debug.traceback()) end
local lazy = lazy_or_err

-- Plugin specs live in lua/cfg/lazy_plugins/*.lua and are auto-imported below.
return lazy.setup({
  spec = {
    { import = 'cfg.lazy_plugins' },
  },
  change_detection = { notify = false },
  checker = { enabled = false },
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})
