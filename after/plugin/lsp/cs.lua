local lsp_ok, lsp_or_err = pcall(require, 'lspconfig')
if not lsp_ok then return print(lsp_or_err .. '\n\n' .. debug.traceback()) end
local lsp = lsp_or_err

local pid = vim.fn.getpid()

-- Load env for `omnisharp`
local env_ok, env_or_err = pcall(require, 'env.omnisharp')

local omnisharp_bin = env_ok and env_or_err.omnisharp_bin or '/usr/lib/omnisharp-roslyn/OmniSharp'

lsp.omnisharp.setup({
  cmd = { omnisharp_bin, '--languageserver', '--hostPID', tostring(pid) },
})
