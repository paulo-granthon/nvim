-- Load `nvim_lint` module | Return early if error
local nvim_lint_ok, nvim_lint_or_err = pcall(require, 'lint')
if not nvim_lint_ok then return nvim_lint_or_err end
local lint = nvim_lint_or_err

print('hello motherfucker')

lint.linters_by_ft = {
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  svelte = { 'eslint_d' },
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
  html = { 'htmlhint' },
  css = { 'stylelint' },
  dockerfile = { 'hadolint' },
  sql = { 'sqlint' },
}

local lint_augroup = vim.api.nvim_create_augroup('nvim-lint', { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end
})

vim.keymap.set('n', '<leader>l', lint.try_lint, { desc = 'Lint current file with nvim-lint' })
