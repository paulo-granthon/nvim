local opts = {
    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = true,
            -- show_parameter_hints = false,
            parameter_hints_prefix = ':',
        },
        crate_graph = {
            backend = "dot",
        },
    },
    server = {
        on_attach = function(_, bufnr)
            print "on attach rust-tools"
            -- Hover actions
            vim.keymap.set("n", "<C-space>", require("rust-tools").hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>ca", require("rust-tools").code_action_group.code_action_group, { buffer = bufnr })
        end,
    },
}

require("rust-tools").setup(opts)
