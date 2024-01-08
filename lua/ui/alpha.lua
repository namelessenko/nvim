local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	"       -''--.",
	"       _`>   `\\.-'<",
	"    _.'     _     '._",
	"  .'   _.='   '=._   '.",
	"  >_   / /_\\ /_\\ \\   _<",
	"    / (  \\o/ \\o/  ) \\",
	"    >._\\ .-,_)-. /_.<",
	"jgs     /__/ \\__\\ ",
	"          '---'     E=mc^2",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("g", "  > Live Grep", ":Telescope live_grep<CR>"),
	dashboard.button("f", "  > Find file", ":cd $HOME/Projects | Telescope find_files<CR>"),
	dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
	dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

dashboard.section.footer.val = "Where code does matter and matter is coded."

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
