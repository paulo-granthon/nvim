DEFAULT_THEME = 'onedark'

function ColorMyPencils(color)
    if color then
        vim.cmd.colorscheme(color)
    else
        require(DEFAULT_THEME)
        require(DEFAULT_THEME).load()
        color = DEFAULT_THEME
    end

    local no_bg = { bg = "none" }

    -- remove default neovim backgrounds
    vim.api.nvim_set_hl(0, "Normal", no_bg)
    vim.api.nvim_set_hl(0, "NormalFloat", no_bg)
    vim.api.nvim_set_hl(0, "EndOfBuffer", no_bg)

    local line_nr_colors = {
        bg = "none",
        fg = "gray"
    }

    -- remove line number column backgrounds
    vim.api.nvim_set_hl(0, 'LineNrAbove', line_nr_colors)
    vim.api.nvim_set_hl(0, 'LineNr', { fg = "white", bg = "none" })
    vim.api.nvim_set_hl(0, 'LineNrBelow', line_nr_colors)

    -- remove gitsigns backgrounds
    vim.api.nvim_set_hl(0, "SignColumn", no_bg)
end

ColorMyPencils()
