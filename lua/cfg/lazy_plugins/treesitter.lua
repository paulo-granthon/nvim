return {
  -- everybody knows treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    build = ':TSUpdate',
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      vim.g['airline#extensions#tabline#enabled'] = 1
      local group = vim.api.nvim_create_augroup('AirlineAutoRefresh', { clear = true })
      vim.api.nvim_create_autocmd('BufEnter', { command = ':AirlineRefresh', group = group })
    end,
  },
}
