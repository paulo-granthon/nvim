require('agitate').setup({
    github_username = require('env.agitate').github_username
})

vim.keymap.set('n', '<leader>gi', ':AgitateRepoInitGitHub')
vim.keymap.set('n', '<leader>gbp', ':AgitateBranchCreateCheckoutAndPush ')
