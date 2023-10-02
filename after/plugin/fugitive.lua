-- base (in case I just want a quicker `:G ` written in my command line or fail to complete a combo after enough time)
vim.keymap.set("n", "<leader>g", ":G ")

-- Git status
vim.keymap.set("n", "<leader>gs", ':G<CR>5j')                 -- fugitive interface with status and interative staging. 5j to move to first listed file
vim.keymap.set("n", "<leader>gvs", ':G<CR><C-w>H5j')              -- vertical git status

-- basic commands
vim.keymap.set('n', '<leader>gf', ":G fetch<CR>")               -- fetch
vim.keymap.set('n', '<leader>gj', ":G pull<CR>")                -- pull
vim.keymap.set("n", "<leader>ga", ":G add ")                    -- opens git add command ready for parameters
vim.keymap.set("n", "<leader>gc", ":G commit -m \"\"<left>")    -- opens git commit with the cursor between quotes
vim.keymap.set('n', '<leader>gC', ":G commit --amend")
vim.keymap.set("n", "<leader>gk", ":G push ")                    -- no <CR> at the end to prevent accidents

-- "advanced" commands
vim.keymap.set('n', '<leader>gF', ':G fetch --all<CR>')
vim.keymap.set("n", "<leader>gR", ":G reset HEAD~")
vim.keymap.set('n', '<leader>gK', ':G push -f ')
vim.keymap.set('n', '<leader>gJ', ':G pull -f ')
vim.keymap.set('n', '<leader>gI', ':G rebase -i ')

-- info
vim.keymap.set("n", "<leader>gd", ":G diff<CR>")
vim.keymap.set("n", "<leader>gl", ":G log<CR>")
vim.keymap.set("n", "<leader>gbm", ":G blame<CR>")

-- stashing
vim.keymap.set("n", "<leader>gtk", ":G stash<CR>") -- add
vim.keymap.set("n", "<leader>gtj", ":G stash pop") -- pop
vim.keymap.set("n", "<leader>gtd", ":G stash drop") -- drop
vim.keymap.set("n", "<leader>gta", ":G stash apply") -- apply
vim.keymap.set("n", "<leader>gts", ":G stash show<CR>") -- log

-- I'm gonna regret this later
vim.keymap.set('n', '<leader>grf', ':G restore ')
vim.keymap.set('n', '<leader>gra', ':G restore .')
vim.keymap.set('n', '<leader>grc', ':G restore --cached ')

-- Git Branch commands
vim.keymap.set('n', '<leader>gbc', ":G checkout ")              -- Checkout
vim.keymap.set('n', '<leader>gbn', ":G checkout -b ")           -- Checkout new
vim.keymap.set('n', '<leader>gm', ":G merge ")                  -- merge - requires argument
vim.keymap.set('n', '<leader>gbd', ":G branch -d ")             -- delete branch
vim.keymap.set('n', '<leader>gbD', ":G branch -D ")             -- delete branch even it not fully merged
vim.keymap.set('n', '<leader>gbkd', ":G push origin --delete ") -- delete branch from remote


-- function to create and push new branch
function GitCheckoutAndSetUpstream(arg)
    if arg ~= nil and arg ~= '' then
        vim.cmd('echo "Checking out the new branch ' .. arg .. ' and setting upstream to origin."')
        vim.cmd('G checkout -b ' .. arg)
        vim.cmd('G push -u origin ' .. arg)
    else
       print('No argument provided!')
    end
end

-- add vim command for the function
vim.cmd([[
  command! -nargs=1 GitCheckoutAndSetUpstream lua GitCheckoutAndSetUpstream(<f-args>)
]])

-- Checkout to new branch and push to remote
vim.keymap.set('n', '<leader>gbp', ':GitCheckoutAndSetUpstream ', { noremap = true, silent = true })

-- craziness
vim.keymap.set('n', '<leader>gusm', ':G submodule update --init --recursive', { noremap = true, silent = true })
