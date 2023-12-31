local mason_null_ls = require("mason-null-ls")
local null_ls = require("null-ls")
local null_ls_utils = require("null-ls.utils")

mason_null_ls.setup({
	ensure_installed = {
		"pylint", --python linter, has to be installed in your pyenv condaenv, conda install pylint
		"cpplint", --c++ linter

		"stylua", -- lua formatter
		"autopep8", -- python formatter
		"black", -- python formatter
		"isort", -- python import sorter
	},
})

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- configure null_ls
null_ls.setup({
	-- add package.json as identifier for root (for typescript monorepos)
	root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
	-- setup formatters & linters
	sources = {
		diagnostics.pylint,
		diagnostics.cpplint, --cpp linter

		formatting.stylua, -- lua formatter
		formatting.autopep8, --python formatter
		formatting.black, -- python formatter
		formatting.isort, -- isort formatter
	},
	-- configure format on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							--  only use null-ls for formatting instead of lsp server
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
