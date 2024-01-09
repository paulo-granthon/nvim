local open_netrw_if_no_file_arg = function()
    local _, target_arg = pcall(function()
        return vim.v.argv[3]
    end)

    if (not target_arg or target_arg == '.') then
        vim.cmd("silent! Explore")
    end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, {
    callback = open_netrw_if_no_file_arg,
})
