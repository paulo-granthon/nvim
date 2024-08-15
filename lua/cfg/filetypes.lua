-- luacheck: globals vim

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
  callback = function() require('lspconfig').tsserver.setup({}) end,
})
