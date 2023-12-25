--Core
require("core.lazy")
require("core.mapping")
require("core.colorscheme")
require("core.configs")

--UI
require("ui.lualine")
require("ui.startup")
require("ui.mini")

--Plugins
require("plugins.neotree")
require("plugins.telescope")
require("plugins.telescope-undo")
require("plugins.treesitter")
require("plugins.goto")
require("plugins.cmp")
require("plugins.git")
require("plugins.toggleterm")

--LSP
require("plugins.lsp.lspconfig")
require("plugins.lsp.mason")

--Formater
require("plugins.lsp.none-ls")

--Debug: Under dev
require("plugins.debug.dap")

--LaTeX
--TODO: fix unworked command
require("plugins.vimtex")
