return {
  -- Rust utilities
  'simrat39/rust-tools.nvim',
  {
    'saecki/crates.nvim',
    tag = 'v0.3.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require('crates').setup() end,
  },
}
