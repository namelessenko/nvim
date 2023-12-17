require('dap-python').setup()

require("dap").adapters.lldb = {
	type = "executable",
	command = "lldb-vscode", -- adjust as needed
	--command = "~/.local/share/nvim/mason/packages/codelldb/codelldb",
    name = "lldb",
}

local lldb = {
	name = "Launch lldb",
	type = "lldb", -- matches the adapter
	request = "launch", -- could also attach to a currently running process
	program = function()
		return vim.fn.input(
			"Path to executable: ",
			vim.fn.getcwd() .. "/",
			"file"
		)
	end,
	cwd = "${workspaceFolder}",
	stopOnEntry = false,
	args = {},
	runInTerminal = false,
}

require('dap').configurations.cpp = {
	lldb -- different debuggers or more configurations can be used here
}


vim.api.nvim_set_keymap('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', '<cmd>DapContinue<CR>', { noremap = true, silent = true })


local dap = require("dap")
local dapui = require("dapui")
opts = {}
dapui.setup(opts)
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open({})
end
    dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close({})
end
    dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close({})
end
