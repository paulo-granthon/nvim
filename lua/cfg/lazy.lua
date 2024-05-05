local fn = vim.fn

-- luacheck: globals vim

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({

  'paulo-granthon/agitate.nvim',

  -- colorscheme
  'paulo-granthon/hyper.nvim',

  {
    'stevearc/oil.nvim',
    event = { 'VimEnter' },
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  'github/copilot.vim',

  -- colorize color codes for frontend dev :)
  'norcalli/nvim-colorizer.lua',

  -- sticky buffer list
  'ThePrimeagen/harpoon',
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
  },

  -- everybody knows treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function() require('nvim-treesitter.install').update({ with_sync = true })() end,
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      vim.g['airline#extensions#tabline#enabled'] = 1
      local group = vim.api.nvim_create_augroup('AirlineAutoRefresh', { clear = true })
      vim.api.nvim_create_autocmd('BufEnter', { command = ':AirlineRefresh', group = group })
    end,
  },

  -- peeking
  {
    'dnlhc/glance.nvim',
    config = function() require('glance').setup() end,
  },

  -- undo tree history
  'mbbill/undotree',

  -- Auto pairs for '(', '[', '{'
  {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup({ check_ts = true }) end,
  },

  -- Auto pairs for HTML tags
  {
    'windwp/nvim-ts-autotag',
    config = function() require('nvim-ts-autotag').setup() end,
  },

  -- Rainbow colors for delimiters
  'hiphish/rainbow-delimiters.nvim',

  -- Quick surrounding with '(', ''', '{', etc
  {
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },

  -- To expand or collapse blocks of code
  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter' },
    config = function()
      require('treesj').setup({ --[[ your config ]]
      })
    end,
  },

  'theprimeagen/refactoring.nvim',
  'numToStr/Comment.nvim',

  -- Git integration
  'tpope/vim-fugitive',
  'rbong/vim-flog',
  'lewis6991/gitsigns.nvim',
  {
    'luukvbaal/statuscol.nvim',
    config = function()
      require('statuscol').setup({
        --
      })
    end,
  },

  'voldikss/vim-floaterm',

  -- LSP
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim', build = ':MasonUpdate' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional
      { 'WhoIsSethDaniel/mason-tool-installer.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-nvim-lua' },
      { 'L3MON4D3/LuaSnip' }, -- Required
    },
  },

  -- formatting
  {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
  },

  -- linting
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    name = 'lint',
  },

  -- Rust utilities
  'simrat39/rust-tools.nvim',
  {
    'saecki/crates.nvim',
    tag = 'v0.3.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require('crates').setup() end,
  },

  -- Highlights repetitions of the word at the cursor
  {
    'RRethy/vim-illuminate',
    config = function()
      require('illuminate').configure({
        delay = 200,
        under_cursor = false,
      })
    end,
  },

  -- for Errors and Warnings
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  -- icons
  'nvim-tree/nvim-web-devicons',
  'ryanoasis/vim-devicons',

  --- Status bar - Airline
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',

  -- better indentation indication
  'lukas-reineke/indent-blankline.nvim',

  -- fun
  'eandrju/cellular-automaton.nvim',

  -- hide sensitive data
  'laytan/cloak.nvim',

  'chrisgrieser/nvim-spider',

  -- JAVA
  'mfussenegger/nvim-dap',
  'mfussenegger/nvim-jdtls',

  -- Markdown file preview
  {
    'iamcco/markdown-preview.nvim',
    build = function() fn['mkdp#util#install']() end,
  },

  {
    'ray-x/go.nvim',
    dependencies = { -- optional packages
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function() require('go').setup() end,
    event = { 'CmdlineEnter' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },

  {
    'nvim-java/nvim-java',
    dependencies = {
      'nvim-java/nvim-java-refactor',
      'nvim-java/lua-async-await',
      'nvim-java/nvim-java-core',
      'nvim-java/nvim-java-test',
      'nvim-java/nvim-java-dap',
      'MunifTanjim/nui.nvim',
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      {
        'williamboman/mason.nvim',
        opts = {
          registries = {
            'github:nvim-java/mason-registry',
            'github:mason-org/mason-registry',
          },
        },
      },
    },
  },
})
