-- Load `conform` module | Return early if error
local conform_ok, conform_or_err = pcall(require, 'conform')
if not conform_ok then return conform_or_err end
local conform = conform_or_err

conform.setup({
  formatters_by_ft = {
    javascript = { 'prettier' },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    javascriptreact = { 'prettier' },
    json = { 'prettier' },
    html = { 'prettier' },
    lua = { 'stylua' },
    python = { 'isort', 'black' },
    rust = { 'rustfmt' },
    go = { 'gofmt' },
    markdown = { 'prettier' },
    yaml = { 'prettier' },
    toml = { 'prettier' },
    sh = { 'shfmt' },
    css = { 'prettier' },
    cs = { "csharpier" },
  },
})

vim.keymap.set({ 'n', 'v' }, '<leader>F', function()
  require('conform').format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = 'Format file with Conform.nvim' })
