-- Load `agitate` module | Return early if error
local agitate_ok, agitate_or_err = pcall(require, 'agitate')
if not agitate_ok then return agitate_or_err end

-- Load env for `agitate`
local env_ok, env_or_err = pcall(require, 'env.agitate')

-- Setup `agitate` with `env` if ok or `{err = <msg>}` if error
-- No early return so that keybindings are still set even if no env
agitate_or_err.setup(env_ok and env_or_err or {
    err = env_or_err
})

-- Set keybindings
vim.keymap.set('n', '<leader>gi', ':AgitateRepoInitGitHub')
vim.keymap.set('n', '<leader>gbp', ':AgitateBranchCreateCheckoutAndPush ')
