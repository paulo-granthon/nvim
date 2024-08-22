local mason_tool_installer_ok, mason_tool_installer_or_err = pcall(require, 'mason-tool-installer')
if not mason_tool_installer_ok then return mason_tool_installer_or_err end

local mason_tool_installer = mason_tool_installer_or_err

mason_tool_installer.setup({
  ensure_installed = {
    'eslint',
    'cpplint',
    'stylelint',
    'prettier',
    'hadolint',
    'jsonlint',
    'luacheck',
    'stylua',
    'markdownlint',
    'isort',
    'black',
    'pylint',
    'shellcheck',
    'yamllint',
  },
})
