return {
	-- Debugging tool
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = { "mfussenegger/nvim-dap" },
		config = function()
			-- Update the path passed to setup to point to your system or virtual env python binary
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
		end,
	},

	-- Debugging UI
	{
		"rcarriga/nvim-dap-ui",
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
			"nvim-telescope/telescope-dap.nvim",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated["dapui_config"] = function()
				-- Commented to prevent DAP UI from closing when unit tests finish
				-- dapui.close()
			end

			dap.listeners.before.event_exited["dapui_config"] = function()
				-- Commented to prevent DAP UI from closing when unit tests finish
				-- dapui.close()
			end
		end,
	},
}
