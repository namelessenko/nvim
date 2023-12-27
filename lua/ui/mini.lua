require("mini.indentscope").setup({
	symbol = "│",
	options = { try_as_border = true },
})

vim.api.nvim_create_autocmd({ "FileType" }, {
	desc = "Disable indentscope for certain filetypes",
	callback = function()
		local ignore_filetypes = {
			"aerial",
			"dashboard",
			"help",
			"lazy",
			"leetcode.nvim",
			"mason",
			"neo-tree",
			"NvimTree",
			"neogitstatus",
			"notify",
			"startify",
			"toggleterm",
			"Trouble",
		}
		if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
			vim.b.miniindentscope_disable = true
		end
	end,
})
