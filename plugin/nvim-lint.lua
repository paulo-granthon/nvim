-- Load `nvim_lint` module | Return early if error
local nvim_lint_ok, nvim_lint_or_err = pcall(require, 'lint')
if not nvim_lint_ok then return nvim_lint_or_err end
local lint = nvim_lint_or_err

lint.linters_by_ft = {
  javascript = { 'eslint' },
  javascriptreact = { 'eslint' },
  typescript = { 'eslint' },
  typescriptreact = { 'eslint' },
  c = { 'cpplint' },
  cpp = { 'cpplint' },
  css = { 'stylelint' },
  dockerfile = { 'hadolint' },
  go = { 'golangcilint' },
  json = { 'jsonlint' },
  lua = { 'luacheck' },
  markdown = { 'markdownlint' },
  python = { 'isort', 'black', 'pylint' },
  sh = { 'shellcheck' },
  svelte = { 'eslint' },
  vue = { 'eslint' },
  yaml = { 'yamllint' },
}

local lint_augroup = vim.api.nvim_create_augroup('nvim-lint', { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint() --
  end,
})

vim.keymap.set('n', '<leader>l', lint.try_lint, { desc = 'Lint current file with nvim-lint' })
