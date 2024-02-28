local mason_tool_installer_ok, mason_tool_installer_or_err = pcall(require, 'mason-tool-installer')
if not mason_tool_installer_ok then return mason_tool_installer_or_err end

local mason_tool_installer = mason_tool_installer_or_err

mason_tool_installer.setup({
  ensure_installed = {
    'prettier',
    'google-java-format',
    'stylua',
    'isort',
    'black',
    'rustfmt',
    'gofumpt',
    'shfmt',
    'csharpier',
    'sql-formatter',
  },
})
