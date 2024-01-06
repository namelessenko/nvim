local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	--######################################
	--Navigation
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/nvim-treesitter-refactor",
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim", "debugloop/telescope-undo.nvim" },
	},

	{

		"debugloop/telescope-undo.nvim",

		dependencies = { -- note how they're inverted to above example
			{
				"nvim-telescope/telescope.nvim",
				dependencies = { "nvim-lua/plenary.nvim" },
			},
		},
	},
	--######################################

	--Theme
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
	},
	--######################################

	---LSP
	{
		{ "neovim/nvim-lspconfig" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-cmdline" },
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/vim-vsnip" }, --for cmp
	},

	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
	},

	{
		'simrat39/symbols-outline.nvim'	
    },
	--######################################

	---Debug
	{
		event = "VeryLazy",
		"mfussenegger/nvim-dap",
	},

	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = "mfussenegger/nvim-dap",
	},

	{
		"folke/neodev.nvim",
	},

	{
		event = "VeryLazy",
		"mfussenegger/nvim-dap-python",
	},
	--######################################
	--Formatter
	{
		"nvimtools/none-ls.nvim", -- configure formatters & linters
		lazy = true,
		-- event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
		dependencies = {
			"jay-babu/mason-null-ls.nvim",
		},
	},
	--######################################
	--Surrounds
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},
	--######################################
	--Comments
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		lazy = false,
	},

	--Others
	{
		"rmagatti/goto-preview",
	},

	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},

	{
		"lewis6991/gitsigns.nvim",
	},

	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
	},

	{
		"goolord/alpha-nvim",
	},

	{
		"akinsho/toggleterm.nvim",
	},

	{
		"lervag/vimtex",
	},

	--nvim-autopairs
	{

		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) functions
	},

	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},
	{ "echasnovski/mini.nvim", version = "*" },
})
