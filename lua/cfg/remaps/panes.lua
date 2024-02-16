-- Reduce typos when making splits
vim.cmd([[command! -nargs=* -complete=command Sp sp]])
vim.cmd([[command! -nargs=* -complete=command SP sp]])
vim.cmd([[command! -nargs=* -complete=command Vs vs]])
vim.cmd([[command! -nargs=* -complete=command VS vs]])

-- faster splits
vim.keymap.set('n', '<leader>sp', ':sp<CR>') -- faster splits (horizontal)
vim.keymap.set('n', '<leader>vs', ':vs<CR>') -- faster splits (vertical)

-- split + focus on the new pane
vim.keymap.set({ 'n', 'v' }, '<leader>vw', ':vs<CR><C-w>w') -- vertical split and focus on split
vim.keymap.set({ 'n', 'v' }, '<leader>sw', ':sp<CR><C-w>w') -- horizontal split and focus on split

-- pane navigation / focusing
vim.keymap.set({ 'n', 'v' }, '\\w', '<C-w>w') -- focus on "next" pane
vim.keymap.set({ 'n', 'v' }, '\\W', '<C-w>W') -- focus on "previous" pane

-- directional pane navigation / focusing
vim.keymap.set({ 'n', 'v' }, '\\h', '<C-w>h') -- focus on next pane to the left
vim.keymap.set({ 'n', 'v' }, '\\j', '<C-w>j') -- focus on next pane down
vim.keymap.set({ 'n', 'v' }, '\\k', '<C-w>k') -- focus on next pane up
vim.keymap.set({ 'n', 'v' }, '\\l', '<C-w>l') -- focus on next pane to the right

-- pane repositioning
vim.keymap.set({ 'n', 'v' }, '\\H', '<C-w>H') -- move pane to the far left
vim.keymap.set({ 'n', 'v' }, '\\J', '<C-w>J') -- move pane to the very bottom
vim.keymap.set({ 'n', 'v' }, '\\K', '<C-w>K') -- move pane to the very top
vim.keymap.set({ 'n', 'v' }, '\\L', '<C-w>L') -- move pane to the far right

-- distribute panes sizes evenly
vim.keymap.set({ 'n', 'v' }, '\\<BS>', '<C-w>=')

-- resize panes (1 tile)
vim.keymap.set({ 'n', 'v' }, '\\=', '<C-w>+') -- increase current pane's height by 1 tile
vim.keymap.set({ 'n', 'v' }, '\\-', '<C-w>-') -- decrease current pane's height by 1 tile
vim.keymap.set({ 'n', 'v' }, '\\.', '<C-w>>') -- increase current pane's width by 1 tile
vim.keymap.set({ 'n', 'v' }, '\\,', '<C-w><') -- decrease current pane's width by 1 tile

-- resize panes (4 tiles)
vim.keymap.set({ 'n', 'v' }, '\\+', '<C-w>+4') -- increase current pane's height by 4 tiles
vim.keymap.set({ 'n', 'v' }, '\\_', '<C-w>-4') -- decrease current pane's height by 4 tiles
vim.keymap.set({ 'n', 'v' }, '\\>', '<C-w>>4') -- increase current pane's width by 4 tiles
vim.keymap.set({ 'n', 'v' }, '\\<', '<C-w><4') -- decrease current pane's width by 4 tiles

-- resize windows (16 tiles)
vim.keymap.set({ 'n', 'v' }, '<bar>+', '<C-w>16+') -- increase current window's height by 16 tiles
vim.keymap.set({ 'n', 'v' }, '<bar>_', '<C-w>16-') -- decrease current window's height by 16 tiles
vim.keymap.set({ 'n', 'v' }, '<bar>>', '<C-w>16>') -- increase current window's width by 16 tiles
vim.keymap.set({ 'n', 'v' }, '<bar><', '<C-w>16<') -- decrease current window's width by 16 tiles

-- resize windows (48 tiles)
vim.keymap.set({ 'n', 'v' }, '<bar>=', '<C-w>48+') -- increase current window's height by 48 tiles
vim.keymap.set({ 'n', 'v' }, '<bar>-', '<C-w>48-') -- decrease current window's height by 48 tiles
vim.keymap.set({ 'n', 'v' }, '<bar>.', '<C-w>48>') -- increase current window's width by 48 tiles
vim.keymap.set({ 'n', 'v' }, '<bar>,', '<C-w>48<') -- decrease current window's width by 48 tiles
