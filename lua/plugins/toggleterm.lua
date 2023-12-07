local trim_spaces = true
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true })
-- Keymap to close :ToggleTerm and return to normal mode
vim.keymap.set("t", "<leader>t", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "<space>s", function()
    require("toggleterm").send_lines_to_terminal("single_line", trim_spaces, { args = vim.v.count })
end)
    -- Replace with these for the other two options
    --require("toggleterm").send_lines_to_terminal("visual_line", trim_spaces, { args = vim.v.count })
    -- require("toggleterm").send_lines_to_terminal("visual_selection", trim_spaces, { args = vim.v.count })

-- For use as an operator map:
-- Send motion to terminal
vim.keymap.set("n", [[<leader><c-\>]], function()
  set_opfunc(function(motion_type)
    require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
  end)
  vim.api.nvim_feedkeys("g@", "n", false)
end)
-- Double the command to send line to terminal
vim.keymap.set("n", [[<leader><c-\><c-\>]], function()
  set_opfunc(function(motion_type)
    require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
  end)
  vim.api.nvim_feedkeys("g@_", "n", false)
end)
-- Send whole file
vim.keymap.set("n", [[<leader><leader><c-\>]], function()
  set_opfunc(function(motion_type)
    require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
  end)
  vim.api.nvim_feedkeys("ggg@G''", "n", false)
end)

require("toggleterm").setup()
