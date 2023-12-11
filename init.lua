--Core
require("core.lazy")
require("core.mapping")

--UI
require("ui.lualine")
require("ui.startup")
require("ui.colorscheme")
require("core.configs")--this string should be lower then the colorschem callig

--Plugins
require("plugins.neotree")
require("plugins.treesitter")
require("plugins.cmp")
require("plugins.telescope")
require("plugins.telescope-undo")
require("plugins.git")
require("plugins.toggleterm")

--LSP
require("plugins.lsp.lspconfig")
require("plugins.lsp.mason")
require("plugins.lsp.mason-tool-installer")
require("plugins.lsp.mason-lspconfig")

--Debug: Under dev
require("plugins.debug.dap")

--Wolfram and REPL
--require("plugins.sniprun")

--LaTeX
--TODO: fix unworked command
require("plugins.vimtex")
