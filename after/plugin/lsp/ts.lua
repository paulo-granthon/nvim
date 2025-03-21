-- luacheck: ignore 021 511 631
if true then return end

local lsp_ok, lsp_or_err = pcall(require, 'lspconfig')
if not lsp_ok then return print(lsp_or_err .. '\n\n' .. debug.traceback()) end
local lsp = lsp_or_err

local client_capabilities = lsp_or_err.protocol.make_client_capabilities()

lsp.eslint.setup({
  capabilities = client_capabilities,
  flags = { debounce_text_changes = 500 },
  on_attach = function(client, _)
    client.server_capabilities.document_formatting = true
    if client.server_capabilities.document_formatting then
      local au_lsp = vim.api.nvim_create_augroup('eslint_lsp', { clear = true })
      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*',
        callback = function() vim.lsp.buf.format(nil) end,
        group = au_lsp,
      })
    end
  end,
})
