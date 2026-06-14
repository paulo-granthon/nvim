-- Plugins intentionally parked (disabled) but kept for easy re-enabling.
-- Returns no specs; uncomment a block and move it to its own file to restore.
return {

  -- {
  --   'ray-x/go.nvim',
  --   branch = 'nvim_0.8',
  --   dependencies = { -- optional packages
  --     'ray-x/guihua.lua',
  --     'neovim/nvim-lspconfig',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  --   config = function() require('go').setup() end,
  --   event = { 'CmdlineEnter' },
  --   ft = { 'go', 'gomod' },
  --   build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  -- },

  -- {
  --   'nvim-java/nvim-java',
  --   dependencies = {
  --     'nvim-java/nvim-java-refactor',
  --     'nvim-java/lua-async-await',
  --     'nvim-java/nvim-java-core',
  --     'nvim-java/nvim-java-test',
  --     'nvim-java/nvim-java-dap',
  --     'MunifTanjim/nui.nvim',
  --     'neovim/nvim-lspconfig',
  --     'mfussenegger/nvim-dap',
  --     {
  --       'williamboman/mason.nvim',
  --       opts = {
  --         registries = {
  --           'github:nvim-java/mason-registry',
  --           'github:mason-org/mason-registry',
  --         },
  --       },
  --     },
  --   },
  -- },

}
