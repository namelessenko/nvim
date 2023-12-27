require("neo-tree").setup({
	close_if_last_window = true,
	window = {
		width = 20,
	},
	buffers = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false,
		},
	},
	filesystem = {
		follow_current_file = {
			enabled = true,
			leave_dirs_open = false,
		},
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
			hide_by_name = {
				"node_modules",
			},
			never_show = {
				".DS_Store",
				"thumbs.db",
			},
		},
	},
})
