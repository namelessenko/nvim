-- Telescope setup with telescope-undo extension configuration
require("telescope").setup({
	extensions = {
		undo = {
			-- Configuration options for telescope-undo
			use_delta = true, -- Set to false if you don't want to use delta for diffs
			side_by_side = false, -- Set to true if you prefer side-by-side diffs
			diff_context_lines = vim.o.scrolloff, -- Number of context lines in diff
			entry_format = "state #$ID, $STAT, $TIME", -- Format of each entry
			time_format = "", -- Format for displaying time
			saved_only = false, -- Show only saved undo states

			-- Key mappings within the telescope-undo extension
			mappings = {
				i = {
					["<cr>"] = require("telescope-undo.actions").yank_additions,
					["<S-r>"] = require("telescope-undo.actions").yank_deletions,
					["<C-r>"] = require("telescope-undo.actions").restore,
				},
				n = {
					["y"] = require("telescope-undo.actions").yank_additions,
					["Y"] = require("telescope-undo.actions").yank_deletions,
					["u"] = require("telescope-undo.actions").restore,
				},
			},
		},
	},
})

-- Load telescope-undo extension
require("telescope").load_extension("undo")

-- Key mapping to launch telescope-undo
vim.api.nvim_set_keymap("n", "<leader>u", "<cmd>Telescope undo<CR>", { noremap = true, silent = true })
