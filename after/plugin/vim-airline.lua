-- enable theme
vim.g["airline_theme"] = 'jellybeans'
-- vim.g["airline"]

-- use powerline fonts
vim.g["airline_powerline_fonts"] = 1

-- NeoVim options
vim.o.showtabline = 2
vim.o.showmode = false

-- enable tabline
vim.g['airline#extensions#tabline#enabled'] = 1

-- tabline symbols
vim.g["airline#extensions#tabline#left_sep"] = ''
vim.g["airline#extensions#tabline#letf_alt_sep"] = ''
vim.g["airline#extensions#tabline#right_sep"] = ''
vim.g["airline#extensions#tabline#right_alt_sep"] = ''

-- set the specific font for airline
-- vim.o.guifont = 'DejaVu:Sans:s12'

-- unicode symbols
vim.g["airline_left_sep"] = '»'
vim.g["airline_left_sep"] = '▶'
vim.g["airline_right_sep"] = '«'
vim.g["airline_right_sep"] = '◀'
vim.g["airline_symbols.linenr"] = '␊'
vim.g["airline_symbols.linenr"] = '␤'
vim.g["airline_symbols.linenr"] = '¶'
vim.g["airline_symbols.branch"] = '⎇'
vim.g["airline_symbols.paste"] = 'ρ'
vim.g["airline_symbols.paste"] = 'Þ'
vim.g["airline_symbols.paste"] = '∥'
vim.g["airline_symbols.whitespace"] = 'Ξ'

-- airline symbols
vim.g["airline_left_sep"] = ''
vim.g["airline_left_alt_sep"] = ''
vim.g["airline_right_sep"] = ''
vim.g["airline_right_alt_sep"] = ''
vim.g["airline_symbols.branch"] = ''
vim.g["airline_symbols.readonly"] = ''
vim.g["airline_symbols.linenr"] = ''
