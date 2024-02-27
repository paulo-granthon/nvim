-- Load `nvim_lint` module | Return early if error
local nvim_lint_ok, nvim_lint_or_err = pcall(require, 'lint')
if not nvim_lint_ok then return nvim_lint_or_err end
local lint = nvim_lint_or_err

lint.linters_by_ft = {
  javascript = { 'eslint' },
  typescript = { 'eslint' },
  javascriptreact = { 'eslint' },
  typescriptreact = { 'eslint' },
  svelte = { 'eslint' },
  lua = { 'luacheck' },
  rust = { 'cargo' },
  python = { 'pylint' },
  go = { 'golangcilint' },
  sh = { 'shellcheck' },
  yaml = { 'yamllint' },
  json = { 'jsonlint' },
  markdown = { 'markdownlint' },
  java = { 'checkstyle' },
  cpp = { 'cpplint' },
  c = { 'cpplint' },
  css = { 'stylelint' },
  dockerfile = { 'hadolint' },
  sql = { 'sqlfluff' },
}

local lint_augroup = vim.api.nvim_create_augroup('nvim-lint', { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end
})

vim.keymap.set('n', '<leader>l', lint.try_lint, { desc = 'Lint current file with nvim-lint' })
