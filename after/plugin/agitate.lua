local agitate_ok, agitate_or_err = pcall(require, 'agitate')
if not agitate_ok then return agitate_or_err end

local env_ok, env_or_err = pcall(require, 'env.agitate')

agitate_or_err.setup(env_ok and env_or_err or {
    err = env_or_err
})

vim.keymap.set('n', '<leader>gi', ':AgitateRepoInitGitHub')
vim.keymap.set('n', '<leader>gbp', ':AgitateBranchCreateCheckoutAndPush ')
