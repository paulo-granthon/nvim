vim.keymap.set("n", "<leader>gs", vim.cmd.Git);                 -- fugitive interface with status and interative staging
vim.keymap.set("n", "<leader>ga", ":G add ");                   -- opens git add command ready for parameters 
vim.keymap.set("n", "<leader>gc", ":G commit -m \"\"<left>");   -- opens git commit with the cursor between quotes
vim.keymap.set("n", "<leader>gp", ":G push");                   -- no <CR> at the end to prevent accidents


