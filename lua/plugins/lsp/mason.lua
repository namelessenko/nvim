require("mason").setup()
require("mason-lspconfig").setup({
	-- list of servers for mason to install
	ensure_installed = {
		"lua_ls",
		"jedi_language_server",
		"clangd",
		"julials",
		"texlab",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

require("mason-tool-installer").setup({
	ensure_installed = {
		"flake8", --python linter
		"cpplint", --c++ linter
		"stylua", -- lua formatter
		"autopep8", -- python formatter
		"black", -- python formatter
		"isort", -- python import sorter
	},
})
