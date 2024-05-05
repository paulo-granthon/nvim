-- luacheck: globals vim

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'html',
    'css',
    'js',
    'ts',
    'tsx',
    'jsx',
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
    'js',
    'Jsx',
    'vue',
  },
  callback = function() require('lspconfig').tsserver.setup({}) end,
})
