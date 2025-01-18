local conform_ok, conform_or_err = pcall(require, 'conform')
if not conform_ok then return print(conform_or_err .. '\n\n' .. debug.traceback()) end
local conform = conform_or_err

conform.setup({
  formatters_by_ft = {
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    javascriptreact = { 'prettier' },
    vue = { 'prettier' },
    java = { 'google-java-format' },
    json = { 'prettier' },
    html = { 'prettier' },
    lua = { 'stylua' },
    python = { 'pylint' },
    rust = { 'rustfmt' },
    go = { 'gofumpt' },
    markdown = { 'prettier' },
    yaml = { 'prettier' },
    toml = { 'prettier' },
    sh = { 'shfmt' },
    css = { 'prettier' },
    xml = { 'xmlformat' },
    cs = { 'ast-grep' },
  },
})

vim.keymap.set({ 'n', 'v' }, '<leader>F', function()
  require('conform').format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 1500,
  })
end, { desc = 'Format file with Conform.nvim' })
