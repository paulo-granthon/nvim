local pid = vim.fn.getpid()

-- Load env for `omnisharp`
local env_ok, env_or_err = pcall(require, 'env.omnisharp')

local omnisharp_bin = env_ok and env_or_err.omnisharp_bin or '/usr/lib/omnisharp-roslyn/OmniSharp'

require('lspconfig').omnisharp.setup({
  cmd = { omnisharp_bin, '--languageserver', '--hostPID', tostring(pid) },
})
