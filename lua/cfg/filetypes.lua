vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'html',
    'css',
    'js',
    'jsx',
    'ts',
    'tsx',
    'json',
    'vue',
  },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'java',
    'c',
    'cpp',
    'h',
    'hpp',
    'py',
  },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'js',
    'jsx',
    'ts',
    'tsx',
    'vue',
  },
  callback = function() --
    local lsp_ok, lsp_or_err = pcall(require, 'lspconfig')
    if not lsp_ok then return print(lsp_or_err .. '\n\n' .. debug.traceback()) end
    local lsp = lsp_or_err

    lsp.tsserver.setup({})
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'lua',
  },
  callback = function() --
    local lua_remaps_ok, lua_remaps_or_err = pcall(require, 'cfg.remaps.lua')
    if not lua_remaps_ok then return print(lua_remaps_or_err .. '\n\n' .. debug.traceback()) end
  end,
})
