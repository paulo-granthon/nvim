local mason_ok, mason_or_err = pcall(require, 'mason')
if not mason_ok then return mason_or_err end

local mason = mason_or_err

mason.setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
})
