local lsp_ok, lsp_or_err = pcall(require, 'lsp-zero')
if not lsp_ok then return print(lsp_or_err .. '\n\n' .. debug.traceback()) end
local lsp = lsp_or_err.preset({})

lsp.ensure_installed({
  'rust_analyzer',
  'lua_ls',
  'eslint',
  'bashls',
})

local cmp_ok, cmp_or_err = pcall(require, 'cmp')
if not cmp_ok then return print(cmp_or_err .. '\n\n' .. debug.traceback()) end
local cmp = cmp_or_err

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set_preferences({
  sign_icons = {},
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings,
})

lsp.on_attach(function(_, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
  -- vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  vim.keymap.set({ 'n', 'v' }, '<leader>f', vim.lsp.buf.format, opts)
  vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end)

vim.diagnostic.config({
  virtual_text = true,
})

local java_ok, java_or_err = pcall(require, 'java')
if not java_ok then return print(java_or_err .. '\n\n' .. debug.traceback()) end
local java = java_or_err
java.setup()

local lspconfig_ok, lspconfig_or_err = pcall(require, 'lspconfig')
if not lspconfig_ok then return print(lspconfig_or_err .. '\n\n' .. debug.traceback()) end
local lspconfig = lspconfig_or_err
lspconfig.jdtls.setup({})

lsp.setup()
