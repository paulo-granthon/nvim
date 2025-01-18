local lsp_ok, lsp_or_err = pcall(require, 'lspconfig')
if not lsp_ok then return print(lsp_or_err .. '\n\n' .. debug.traceback()) end
local lsp = lsp_or_err

local go_format_ok, go_format_or_err = pcall(require, 'go.format')
if not go_format_ok then return print(go_format_or_err .. '\n\n' .. debug.traceback()) end
local go_format = go_format_or_err

lsp.gopls.setup({
  settings = {
    gopls = {
      usePlaceholders = true,
      buildFlags = {
        '-tags=integration',
      },
      gofumpt = true,
    },
  },
})

local format_sync_grp = vim.api.nvim_create_augroup('GoImport', {})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.go',
  callback = function()
    go_format.goimport() --
  end,
  group = format_sync_grp,
})
