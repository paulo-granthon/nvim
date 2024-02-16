local telescope_builtin_ok, telescope_builtin_or_err = pcall(require, 'telescope.builtin')
if not telescope_builtin_ok then return telescope_builtin_or_err end

local builtin = telescope_builtin_or_err
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
