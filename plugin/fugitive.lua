-- fallback -> type command without combo
vim.keymap.set('n', '<leader>g', ':G ')

-- fugitive status. 5j to move to first listed file
vim.keymap.set('n', '<leader>gs', ':G<CR>5j')
vim.keymap.set('n', '<leader>gvs', ':G<CR><C-w>H5j')

-- basic workflow
vim.keymap.set('n', '<leader>gf', ':G fetch<CR>')
vim.keymap.set('n', '<leader>gj', ':G pull<CR>')
vim.keymap.set('n', '<leader>ga', ':G add ')
vim.keymap.set('n', '<leader>gc', ':G commit -m ""<left>')
vim.keymap.set('n', '<leader>gC', ':G commit --amend')
vim.keymap.set('n', '<leader>gk', ':G push ')
vim.keymap.set('n', '<leader>guk', ':G push -u origin ')

-- rebase
vim.keymap.set('n', '<leader>gI', ':G rebase -i ')
vim.keymap.set('n', '<leader>gRc', ':G rebase --continue ')
vim.keymap.set('n', '<leader>gRa', ':G rebase --abort ')

-- "advanced"
vim.keymap.set('n', '<leader>gF', ':G fetch --all<CR>')
vim.keymap.set('n', '<leader>gR', ':G reset HEAD~')
vim.keymap.set('n', '<leader>gK', ':G push -f ')
vim.keymap.set('n', '<leader>gJ', ':G pull -f ')

-- Merge conflict
vim.keymap.set('n', '<leader>gDs', ':Gvdiffsplit!<CR>')
vim.keymap.set('n', '<leader>gDj', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>gDk', ':diffget //3<CR>')

-- info
vim.keymap.set('n', '<leader>gd', ':G diff<CR>')
vim.keymap.set('n', '<leader>gl', ':G log<CR>')
vim.keymap.set('n', '<leader>gvl', ':G log<CR><C-w>H')
vim.keymap.set('n', '<leader>gbm', ':G blame<CR>')

-- stashing
vim.keymap.set('n', '<leader>gtk', ':G stash<CR>')
vim.keymap.set('n', '<leader>gtK', ':G stash --staged<CR>')
vim.keymap.set('n', '<leader>gtj', ':G stash pop')
vim.keymap.set('n', '<leader>gtd', ':G stash drop')
vim.keymap.set('n', '<leader>gta', ':G stash apply')
vim.keymap.set('n', '<leader>gts', ':G stash show<CR>')

-- restore
vim.keymap.set('n', '<leader>grf', ':G restore ')
vim.keymap.set('n', '<leader>gra', ':G restore .')
vim.keymap.set('n', '<leader>grc', ':G restore --cached ')

-- branch
vim.keymap.set('n', '<leader>gbc', ':G checkout ')
vim.keymap.set('n', '<leader>gbn', ':G checkout -b ')
vim.keymap.set('n', '<leader>gm', ':G merge ')
vim.keymap.set('n', '<leader>gbd', ':G branch -d ')
vim.keymap.set('n', '<leader>gbD', ':G branch -D ')
vim.keymap.set('n', '<leader>gbkd', ':G push origin --delete ')

-- craziness
vim.keymap.set('n', '<leader>gusm', ':G submodule update --init --recursive')
