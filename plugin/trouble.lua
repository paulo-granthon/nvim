require('trouble').setup({
  height = 16,
  padding = false,
  action_keys = {
    toggle_fold = { 'zA', 'za', '=' },
  },
})

vim.keymap.set(
  'n', '<leader>xq', '<cmd>TroubleToggle workspace_diagnostics<cr>',
  { silent = true, noremap = true }
)
