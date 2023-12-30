DEFAULT_THEME = 'modus'

THEME_MODULE_NAME_MAP = {
    ['modus'] = 'modus-themes',
}

function ColorMyPencils(color)
    if not color then
        color = DEFAULT_THEME
    end

    local module_name = THEME_MODULE_NAME_MAP[color] or color

    require(module_name).load()
    vim.cmd.colorscheme(color)

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
