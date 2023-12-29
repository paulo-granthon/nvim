vim.keymap.set('n', '<leader>REOL', ':%s/\\([^ ;{}[\\](,]\\)$/\\1;<CR>');
vim.keymap.set('n', '<leader>RCOMA', ':%s/\\(\\S\\),\\(\\S\\)/\\1, \\2<CR>');
