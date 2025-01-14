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

-- Inspect all the items at the current buffer position
vim.keymap.set('n', '<leader>i', vim.show_pos)

-- Toggle relativenumber - number
vim.keymap.set('n', '<C-L><C-L>', ':set invrelativenumber<CR>')

-- Sometimes is useful to have line wrap on
vim.keymap.set('n', '<leader>tlw', function()
  vim.wo.wrap = not vim.wo.wrap
  print('Line wrap ' .. (vim.wo.wrap and 'enabled' or 'disabled'))
end)

-- Sometimes is useful to have search highlight on
vim.keymap.set('n', '<leader>thl', function()
  vim.opt.hlsearch = not vim.opt.hlsearch:get()
  print('Search highlight ' .. (vim.opt.hlsearch:get() and 'enabled' or 'disabled'))
end)

-- Better Esc in insert mode
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')
vim.keymap.set('i', 'lhlh', '<Esc>')

-- Don't select EOL when selecting to the end of the line
vim.keymap.set('v', '$', '$h')

-- Better exiting terminal mode
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

-- Also center when moving to end of buffer
vim.keymap.set({ 'n', 'v', 'i' }, '<C-End>', '<C-End>zz')

-- Keep cursor in the middle while looking through search results
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- greatest remap ever | Pastes without losing the current paste buffer
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland | Allows copy to system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Replace every instance of word at cursor
vim.keymap.set('n', '<leader>rN', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>')

-- For making Bash scripts executable (Unix)
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- make it rain :D
vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>')

-- source new updated configs from anywhere
vim.keymap.set('n', '<leader>so', function()
  local path = '$HOME/.config/nvim/lua/cfg/remaps'
  vim.cmd(':source ' .. path .. '/init.lua')
  vim.cmd(':source ' .. path .. '/unix.lua')
  vim.cmd(':source ' .. path .. '/format.lua')
  vim.cmd(':source ' .. path .. '/panes.lua')
end)

-- Source additional remaps
require('cfg.remaps.unix')
require('cfg.remaps.format')
require('cfg.remaps.panes')
