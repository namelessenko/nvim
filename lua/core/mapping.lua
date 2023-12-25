vim.g.mapleader = "\\"

--Neotree
vim.keymap.set("n", "<leader>e", ":Neotree left toggle<CR>")
vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

--Navigation
-- Resize windows
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- Move between windows
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Map shortcuts to :bp and :bn
vim.api.nvim_set_keymap("n", "<C-p>", ":bp<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", ":bn<CR>", { noremap = true, silent = true })

-- Map shortcut to close current buffer
vim.api.nvim_set_keymap("n", "<C-q>", ":bd<CR>", { noremap = true, silent = true })

--Macros
-- Replace occurrences of a word under the cursor
vim.api.nvim_set_keymap("n", "<Leader>rn", [[:%s/\<<C-r><C-w>\>/]], { noremap = true, silent = true })
