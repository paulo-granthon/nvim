------------------------------,------------
--     _______     _ __  _   /|_          -
--    /__  __/__  (_) /_| | / (_)___ ___  -
--      / // __ \/ / __/| |/ / / __ `__ \ -
--     / // / / / / /_ _| ` / / / / / / / -
--  __/ //_/_/_/_/\__/(_)  /_/_/ /_/ / /  -
-- /______/             | /          \|   -
------------------------|/-----------------
-------------------------------------------

-- <Space> leader
vim.g.mapleader = ' '

-- Absolutelly needed
vim.keymap.set('n', 'Q', '<nop>')

-- Faster save and quit
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>Q', ':q!<CR>')
vim.keymap.set('n', '<leader>W', ':w!<CR>')

-- 'secondary leader' ;
-- Faster save and back to Explorer
vim.keymap.set('n', ';wq', ':w<CR>:Ex<CR>')

-- Easy netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Toggle relativenumber - number
vim.keymap.set('n', '<C-L><C-L>', ':set invrelativenumber<CR>')

-- Sometimes is useful to have line wrap on
local toggle_line_wrap = function() vim.wo.wrap = not vim.wo.wrap end
vim.keymap.set('n', '<leader>tlw', toggle_line_wrap)

-- Better Esc in insert mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

-- Don't select EOL when selecting to the end of the line
vim.keymap.set('v', '$', '$h')

-- Better exiting terminal insert mode
vim.keymap.set('t', 'jk', '<C-\\><C-n>')
vim.keymap.set('t', 'kj', '<C-\\><C-n>')

-- Better tabbing in visual mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Move selected lines
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Append line bellow to the end of the line and keep cursor at current position
vim.keymap.set('n', 'J', 'mzJ`z')

-- Move half-page keeping the cursor in the middle
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<PageDown>', '<C-d>zz')
vim.keymap.set('n', '<PageUp>', '<C-u>zz')

-- Also center when movind to end of buffer
vim.keymap.set({'n', 'v', 'i'}, '<C-End>', '<C-End>zz')

-- Keep cursor in the middle while looking through search results
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Reduce typos when making splits
vim.cmd([[command! -nargs=* -complete=command Sp sp]])
vim.cmd([[command! -nargs=* -complete=command SP sp]])
vim.cmd([[command! -nargs=* -complete=command Vs vs]])
vim.cmd([[command! -nargs=* -complete=command VS vs]])

vim.keymap.set('n', '<leader>sp', ':sp<CR>'); -- faster splits (horizontal)
vim.keymap.set('n', '<leader>vs', ':vs<CR>'); -- faster splits (vertical)

vim.keymap.set({'n', 'v'}, '<leader>vw', ':vs<CR><C-w>w') -- vertical split and focus on split
vim.keymap.set({'n', 'v'}, '<leader>sw', ':sp<CR><C-w>w') -- horizontal split and focus on split

-- pane navigation / focusing
vim.keymap.set({'n', 'v'}, '\\w', '<C-w>w')
vim.keymap.set({'n', 'v'}, '\\h', '<C-w>h')
vim.keymap.set({'n', 'v'}, '\\j', '<C-w>j')
vim.keymap.set({'n', 'v'}, '\\k', '<C-w>k')
vim.keymap.set({'n', 'v'}, '\\l', '<C-w>l')
vim.keymap.set({'n', 'v'}, '\\W', '<C-w>W') -- focus on last focused window

-- pane repositioning
vim.keymap.set({'n', 'v'}, '\\H', '<C-w>H')
vim.keymap.set({'n', 'v'}, '\\J', '<C-w>J')
vim.keymap.set({'n', 'v'}, '\\K', '<C-w>K')
vim.keymap.set({'n', 'v'}, '\\L', '<C-w>L')

-- equalize window sizes
vim.keymap.set({'n', 'v'}, '\\<BS>', '<C-w>=')

-- resize windows (1 tile)
vim.keymap.set({'n', 'v'}, '\\=', '<C-w>+')
vim.keymap.set({'n', 'v'}, '\\-', '<C-w>-')
vim.keymap.set({'n', 'v'}, '\\.', '<C-w>>')
vim.keymap.set({'n', 'v'}, '\\,', '<C-w><')

-- resize windows (4 tiles)
vim.keymap.set({'n', 'v'}, '\\+', '<C-w>+4')
vim.keymap.set({'n', 'v'}, '\\_', '<C-w>-4')
vim.keymap.set({'n', 'v'}, '\\>', '<C-w>>4')
vim.keymap.set({'n', 'v'}, '\\<', '<C-w><4')

-- resize windows (16 tiles)
vim.keymap.set({'n', 'v'}, '<bar>+', '<C-w>16+')
vim.keymap.set({'n', 'v'}, '<bar>_', '<C-w>16-')
vim.keymap.set({'n', 'v'}, '<bar>>', '<C-w>16>')
vim.keymap.set({'n', 'v'}, '<bar><', '<C-w>16<')

-- resize windows (48 tiles)
vim.keymap.set({'n', 'v'}, '<bar>=', '<C-w>48+')
vim.keymap.set({'n', 'v'}, '<bar>-', '<C-w>48-')
vim.keymap.set({'n', 'v'}, '<bar>.', '<C-w>48>')
vim.keymap.set({'n', 'v'}, '<bar>,', '<C-w>48<')

-- greatest remap ever | Pastes without losing the current paste buffer
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland | Allows copy to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Replace every instance of word at cursor
vim.keymap.set('n', '<leader>rN', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')

-- For making Bash scrpts executable (Unix)
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- make it rain :D
vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>');

-- source new updated keybindings on this file from anywhere
vim.keymap.set('n', '<leader>so', ':source $HOME/.config/nvim/lua/cfg/remap.lua<CR>');

-- unix commands
vim.keymap.set('n', '<leader>rm', ':!rm -rf ')
vim.keymap.set('n', '<leader>cp', ':!cp ')
vim.keymap.set('n', '<leader>mv', ':!mv ')
