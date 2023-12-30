function ColorMyPencils(color)
    if color then
        vim.cmd.colorscheme(color)
    else
        require('onedark').setup {
            style = 'darker'
        }
        require('onedark').load()
        color = 'onedark'
    end

    local no_bg = { bg = "none" }

    -- remove default neovim backgrounds
    vim.api.nvim_set_hl(0, "Normal", no_bg)
    vim.api.nvim_set_hl(0, "NormalFloat", no_bg)
    vim.api.nvim_set_hl(0, "EndOfBuffer", no_bg)

    -- remove gitsigns backgrounds
    vim.api.nvim_set_hl(0, "SignColumn", no_bg)
end

ColorMyPencils()
