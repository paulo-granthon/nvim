-- luacheck: globals lsp client_capabilities

local lsp_ok, lsp_or_err = pcall(require, 'lsp')
if not lsp_ok then return lsp_or_err end

lsp.eslint.setup({
    capabilities = client_capabilities,
    flags = { debounce_text_changes = 500 },
    on_attach = function(client, bufnr)
        client.server_capabilities.document_formatting = true
        if client.server_capabilities.document_formatting then
            local au_lsp = vim.api.nvim_create_augroup("eslint_lsp", { clear = true })
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*",
                callback = function()
                    vim.lsp.buf.format(nil)
                end,
                group = au_lsp,
            })
        end
    end,
})
