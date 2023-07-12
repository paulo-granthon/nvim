function ColorMyPencils(color)
	if color then
		vim.cmd.colorscheme(color)
	else
		require('onedark').setup {
			style = 'darker'
		}
		require('onedark').load()
		color = 'onedark'
	end

    -- remove default neovim backgrounds
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

    -- remove gitsigns backgrounds
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

end
ColorMyPencils()

