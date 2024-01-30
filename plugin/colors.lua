DEFAULT_THEME = 'hyper'

THEME_MODULE_NAME_MAP = {
    ['modus'] = 'modus-themes',
}

function ColorMyPencils(color)
    if not color then
        if not DEFAULT_THEME or DEFAULT_THEME:len() < 1 then
            vim.api.nvim_err_writeln('No default theme set')
            return
        end
        color = DEFAULT_THEME
    end

    local module_name = THEME_MODULE_NAME_MAP[color] or color

    local theme_ok, theme_or_err = pcall(require, module_name)
    if theme_ok then
        theme_or_err.load()
        vim.cmd.colorscheme(color)
    else
        vim.api.nvim_err_writeln(theme_or_err)
    end

    local no_bg = { bg = 'none' }

    -- remove backgrounds
    vim.api.nvim_set_hl(0, 'Normal', no_bg)
    vim.api.nvim_set_hl(0, 'NormalFloat', no_bg)
    vim.api.nvim_set_hl(0, 'EndOfBuffer', no_bg)

    vim.api.nvim_set_hl(0, 'TabLineFill', no_bg)
    vim.api.nvim_set_hl(0, 'TabLine', no_bg)
    vim.api.nvim_set_hl(0, 'TabLineSel', no_bg)

    vim.api.nvim_set_hl(0, 'SpecialKey', no_bg)
    vim.api.nvim_set_hl(0, 'NonText', no_bg)

    local line_nr_colors = {
        bg = 'none',
        fg = 'gray'
    }

    -- remove line number column backgrounds
    vim.api.nvim_set_hl(0, 'LineNrAbove', line_nr_colors)
    vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bg = 'none' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', line_nr_colors)

    -- remove gitsigns backgrounds
    vim.api.nvim_set_hl(0, 'SignColumn', no_bg)
end

ColorMyPencils()