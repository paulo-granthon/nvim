-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim' -- Packer can manage itself

    -- colorscheme
    use({
        'navarasu/onedark.nvim',
        as = 'onedark',
        config = function()
        end
    })

    -- colorize color codes for frontend dev :)
    use 'norcalli/nvim-colorizer.lua'

    -- sticky buffer list
    use('ThePrimeagen/harpoon')

    -- faster file navigation
    use{
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- file explorer sidebar
    use 'nvim-neo-tree/neo-tree.nvim'

    -- everybody knows treesitter
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use({
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            vim.g['airline#extensions#tabline#enabled'] = 1
            local group = vim.api.nvim_create_augroup("AirlineAutoRefresh", {clear = true})
            vim.api.nvim_create_autocmd("BufEnter", { command = ":AirlineRefresh", group = group})
        end
    })

    -- peeking
    use({
        "dnlhc/glance.nvim",
        config = function()
            require('glance').setup({
                -- your configuration
            })
        end,
    })

    -- better undo handling
    use('mbbill/undotree')

    -- Auto pairs for '(', '[', '{'
    use("jiangmiao/auto-pairs")

    -- Quick surrounding with '(', '"', '{', etc
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- To expand or collapse blocks of code
    use({
        'Wansmer/treesj',
        requires = { 'nvim-treesitter' },
        config = function()
            require('treesj').setup({--[[ your config ]]})
        end,
    })

    --
    use 'theprimeagen/refactoring.nvim'
    use 'numToStr/Comment.nvim'

    -- Git integration
    use 'tpope/vim-fugitive'
    use 'rbong/vim-flog'
    use 'lewis6991/gitsigns.nvim'
    use {
        'luukvbaal/statuscol.nvim',
        config = function()
            require("statuscol").setup({
                --
            })
        end
    }

    use 'voldikss/vim-floaterm'

    -- LSP
    use{
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},                          -- Required
            {'williamboman/mason.nvim', run = ':MasonUpdate' }, -- Optional
            {'williamboman/mason-lspconfig.nvim'},              -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},                               -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'},                           -- Required
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},                               -- Required
        }
    }

    -- Rust utilities
    use ('simrat39/rust-tools.nvim')
    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }

    -- Highlights repetitions of the word at the cursor
    use ({
        'RRethy/vim-illuminate',
        config = function ()
            require('illuminate').configure({
                delay = 200,
                under_cursor = false,

            })
        end
    })

    -- for Errors and Warnings
    use({
        "folke/trouble.nvim",
        requires = { 'nvim-tree/nvim-web-devicons' }
    })
    -- icons
    use('nvim-tree/nvim-web-devicons')
    use('ryanoasis/vim-devicons')

    --- Status bar - Airline
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')

    -- better indentation indication
    use "lukas-reineke/indent-blankline.nvim"

    -- greeter
    use{
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }

    -- fun
    use("eandrju/cellular-automaton.nvim")

    -- hide sensitive data
    use("laytan/cloak.nvim")



    -- JAVA
    use 'mfussenegger/nvim-dap'

    -- Markdown file preview
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
