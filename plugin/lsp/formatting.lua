return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        javascriptreact = { 'prettier' },
        json = { 'prettier' },
        html = { 'prettier' },
        lua = { 'stylua' },
        python = { 'isort', 'black' },
        rust = { 'rustfmt' },
        go = { 'gofmt' },
        markdown = { 'prettier' },
        yaml = { 'prettier' },
        toml = { 'prettier' },
        sh = { 'shfmt' },
        css = { 'prettier' },
      },
    })

    vim.keymap.set({ 'n', 'v' }, '<leader>cf', function()
      require('conform').format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { description = 'Format file with Conform.nvim' })
  end
}
