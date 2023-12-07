-- Assuming 'telescope-undo' does not provide a setup function
require("telescope").load_extension("undo")

-- Configure key mappings
vim.api.nvim_set_keymap('n', '<leader>u', '<cmd>Telescope undo<CR>', { noremap = true, silent = true })

