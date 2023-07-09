-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use({
        'navarasu/onedark.nvim',
        as = 'onedark',
        config = function()
            vim.cmd.colorscheme('onedark')
        end
    })

    -- file navigation
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('ThePrimeagen/harpoon')
    use{
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- better undo handling
    use('mbbill/undotree')

    -- Git integration
    use('tpope/vim-fugitive')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim',            -- Optional
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    -- icons
    use('nvim-tree/nvim-web-devicons')
    use('ryanoasis/vim-devicons')

    --- Status bar - Airline
    use('vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')

    -- better indentation indication
    use "lukas-reineke/indent-blankline.nvim"

    -- greeter
    use {
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

end)
