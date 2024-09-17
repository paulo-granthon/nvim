-- Load `treesj` module | Return early if error
local treesj_ok, treesj_or_err = pcall(require, 'treesj')
if not treesj_ok then return treesj_or_err end

local treesj = treesj_or_err

treesj.setup({ })

-- toogle sj
vim.keymap.set("n", "<leader>tsj", vim.cmd.TSJToggle)

-- sj split
vim.keymap.set("n", "<leader>sjs", vim.cmd.TSJSplit)

-- join sj
vim.keymap.set("n", "<leader>jsj", vim.cmd.TSJJoin)
