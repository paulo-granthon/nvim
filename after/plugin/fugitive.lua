
-- Git status
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);                 -- fugitive interface with status and interative staging

-- basic workflow
vim.keymap.set("n", "<leader>ga", ":G add ");                   -- opens git add command ready for parameters 
vim.keymap.set("n", "<leader>gc", ":G commit -m \"\"<left>");   -- opens git commit with the cursor between quotes
vim.keymap.set("n", "<leader>gp", ":G push");                   -- no <CR> at the end to prevent accidents
vim.keymap.set("n", "<leader>gd", ":G diff<CR>");

-- Git Branch commands
vim.keymap.set('n', '<leader>gbc', ":G checkout ")              -- Checkout

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
