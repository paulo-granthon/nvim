require('mini.map').setup()

vim.keymap.set('n', '<Leader>mmo', MiniMap.open)
vim.keymap.set('n', '<Leader>mmc', MiniMap.close)
vim.keymap.set('n', '<Leader>mmf', MiniMap.toggle_focus)
vim.keymap.set('n', '<Leader>mmr', MiniMap.refresh)
vim.keymap.set('n', '<Leader>mms', MiniMap.toggle_side)
vim.keymap.set('n', '<Leader>mmt', MiniMap.toggle)

-- init vim with minimap open
MiniMap.open()
