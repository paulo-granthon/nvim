vim.opt.swapfile = false
vim.opt.backup = false
if package.config:sub(1, 1) == '\\' then
    vim.opt.undodir = os.getenv("LOCALAPPDATA") .. "\\.vim\\undodir" -- Windows
else
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"           -- Linux
end

vim.opt.undofile = true

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.UndotreeToggle()
    vim.cmd.UndotreeFocus() -- TODO: this isn't necessary when closing undotree
end)

local previous_pane = nil

-- when focusing undotree buffer, save the current pane to the local previous_pane variable
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    callback = function()
        if vim.bo.filetype == "undotree" then
            previous_pane = vim.fn.winnr()
        else
            previous_pane = nil
        end
    end
})

-- when closing undotree buffer, restore the focus to the previous that pane that was saved
vim.api.nvim_create_autocmd({ "BufLeave" }, {
    callback = function()
        if vim.bo.filetype ~= "undotree" then return end
        if previous_pane == nil then return end
        vim.cmd(previous_pane .. "wincmd w")
    end
})
