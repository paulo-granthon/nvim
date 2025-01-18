local lsp_ok, lsp_or_err = pcall(require, 'lspconfig')
if not lsp_ok then return print(lsp_or_err .. '\n\n' .. debug.traceback()) end
local lsp = lsp_or_err

lsp.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          'lsp',
          'globals',
        },
      },
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        },
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
