-- fallback -> type command without combo
vim.keymap.set("n", "<leader>g", ":G ")

-- Git status alternatives
vim.keymap.set("n", "<leader>gs", ':G<CR>5j')                 -- fugitive interface with status and interative staging. 5j to move to first listed file
vim.keymap.set("n", "<leader>gvs", ':G<CR><C-w>H5j')              -- vertical git status

-- basic workflow commands
vim.keymap.set('n', '<leader>gf', ":G fetch<CR>")               -- fetch
vim.keymap.set('n', '<leader>gj', ":G pull<CR>")                -- pull
vim.keymap.set("n", "<leader>ga", ":G add ")                    -- opens git add command ready for parameters
vim.keymap.set("n", "<leader>gc", ":G commit -m \"\"<left>")    -- opens git commit with the cursor between quotes
vim.keymap.set('n', '<leader>gC', ":G commit --amend")
vim.keymap.set("n", "<leader>gk", ":G push ")                    -- no <CR> at the end to prevent accidents
vim.keymap.set("n", "<leader>guk", ":G push -u origin ")

-- "advanced" commands
vim.keymap.set('n', '<leader>gF', ':G fetch --all<CR>')
vim.keymap.set("n", "<leader>gR", ":G reset HEAD~")
vim.keymap.set('n', '<leader>gK', ':G push -f ')
vim.keymap.set('n', '<leader>gJ', ':G pull -f ')
vim.keymap.set('n', '<leader>gI', ':G rebase -i ')
vim.keymap.set('n', '<leader>gRc', ':G rebase --continue ')
vim.keymap.set('n', '<leader>gRa', ':G rebase --abort ')

-- Merge conflict
vim.keymap.set('n', '<leader>gDs', ':Gvdiffsplit!<CR>')
vim.keymap.set('n', '<leader>gDj', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>gDk', ':diffget //3<CR>')

-- info
vim.keymap.set("n", "<leader>gd", ":G diff<CR>")
vim.keymap.set("n", "<leader>gl", ":G log<CR>")
vim.keymap.set("n", "<leader>gvl", ":G log<CR><C-w>H")
vim.keymap.set("n", "<leader>gbm", ":G blame<CR>")

-- stashing
vim.keymap.set("n", "<leader>gtk", ":G stash<CR>") -- add
vim.keymap.set("n", "<leader>gtK", ":G stash --staged<CR>") -- add staged only
vim.keymap.set("n", "<leader>gtj", ":G stash pop") -- pop
vim.keymap.set("n", "<leader>gtd", ":G stash drop") -- drop
vim.keymap.set("n", "<leader>gta", ":G stash apply") -- apply
vim.keymap.set("n", "<leader>gts", ":G stash show<CR>") -- log

-- restore
vim.keymap.set('n', '<leader>grf', ':G restore ')
vim.keymap.set('n', '<leader>gra', ':G restore .')
vim.keymap.set('n', '<leader>grc', ':G restore --cached ')

-- branch
vim.keymap.set('n', '<leader>gbc', ":G checkout ")              -- Checkout
vim.keymap.set('n', '<leader>gbn', ":G checkout -b ")           -- Checkout new
vim.keymap.set('n', '<leader>gm', ":G merge ")                  -- merge - requires argument
vim.keymap.set('n', '<leader>gbd', ":G branch -d ")             -- delete branch
vim.keymap.set('n', '<leader>gbD', ":G branch -D ")             -- delete branch even it not fully merged
vim.keymap.set('n', '<leader>gbkd', ":G push origin --delete ") -- delete branch from remote

-- craziness
vim.keymap.set('n', '<leader>gusm', ':G submodule update --init --recursive', { noremap = true, silent = true })
