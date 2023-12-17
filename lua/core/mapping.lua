vim.g.mapleader = "\\"

--Neotree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

--Navigation 

-- Resize windows
vim.api.nvim_set_keymap('n', '<M-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Left>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Right>', ':vertical resize -2<CR>', { noremap = true, silent = true })

-- Move between windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Map shortcuts to :bp and :bn
vim.api.nvim_set_keymap('n', '<C-o>', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':bn<CR>', { noremap = true, silent = true })

-- Map shortcut to close current buffer
vim.api.nvim_set_keymap('n', '<C-q>', ':bd<CR>', { noremap = true, silent = true })

-- Replace all occurrences of 'old_text' with 'new_text' in the entire file
vim.api.nvim_set_keymap('n', '<Leader>s', [[:%s/old_text/new_text/g<CR>]], { noremap = true, silent = true })

-- Replace within a specific range or current line only
vim.api.nvim_set_keymap('n', '<Leader>sr', [[:s/old_text/new_text/gc<CR>]], { noremap = true, silent = true })

-- Map to start multiple cursors with Ctrl+n
vim.api.nvim_set_keymap('n', '<C-n>', [[<Esc>m`:%s/\%V<CR>]], { noremap = true, silent = true })

-- Replace occurrences of a word under the cursor
vim.api.nvim_set_keymap('n', '<Leader>rn', [[:%s/\<<C-r><C-w>\>/]], { noremap = true, silent = true })

-- Global search and replace
vim.api.nvim_set_keymap('n', '<Leader>gs', [[:g/old_text/s//new_text/g<CR>]], { noremap = true, silent = true })



