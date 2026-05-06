if true then return end

local rust_tools_ok, rust_tools_or_err = pcall(require, 'rust-tools')
if not rust_tools_ok then return print(rust_tools_or_err .. '\n\n' .. debug.traceback()) end
local rust_tools = rust_tools_or_err

rust_tools.setup({
    server = {
        on_attach = function(_, _)
            -- Enable verbose logging for Rust Analyzer
            vim.lsp.set_log_level("debug")  -- Set log level to debug
        end,
        settings = {
            ["rust-analyzer"] = {
                verbose = true,  -- Enable verbose logging here
                diagnostics = {
                    enable = true,
                },
                cargo = {
                    loadOutDirsFromCheck = true,
                },
                procMacro = {
                    enable = true,
                },
            },
        },
    },
})
