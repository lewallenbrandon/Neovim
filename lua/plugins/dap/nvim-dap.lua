return {
  "mfussenegger/nvim-dap",
  keys = {
		{ "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint with Condition" },
		{ "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
		{ "<F5>", function() require("dap").continue() end, desc = "Continue" },
		{ "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
		{ "<leader>dc", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
		{ "<leader>dg", function() require("dap").goto_() end, desc = "Go to line (no execute)" },
		{ "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
		{ "<leader>dj", function() require("dap").down() end, desc = "Down" },
		{ "<leader>dk", function() require("dap").up() end, desc = "Up" },
		{ "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
		{ "<S-F11>", function() require("dap").step_out() end, desc = "Step Out" },
		{ "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
		{ "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
		{ "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
		{ "<leader>ds", function() require("dap").session() end, desc = "Session" },
		{ "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
		{ "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
  },
  dependencies = {
    {
      "rcarriga/nvim-dap-ui",
      dependencies = "mfussenegger/nvim-dap",
      config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
          dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
          dapui.close()
        end
			end,
		},
		{
			"folke/which-key.nvim",
			optional = true,
			opts = {
				defaults = {
					["<leader>d"] = { name = "+Debug" },
				},
			},
		},
		{
			"jay-babu/mason-nvim-dap.nvim",
			dependencies = {
				"williamboman/mason.nvim",
				"mfussenegger/nvim-dap",
			},
			config = function()
				require("mason-nvim-dap").setup({
					handlers = {
						function(config)
							-- all sources with no handler get passed here
							-- Keep original functionality
							require("mason-nvim-dap").default_setup(config)
						end,
						codelldb = function(config)
							local dap = require("dap")
							dap.configurations.cpp = {
								{
									name = "Launch file",
									type = "codelldb",
									request = "launch",
									program = function()
										return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
									end,
									cwd = "${workspaceFolder}",
									stopOnEntry = false,
								},
							}
							dap.adapters.codelldb = {
								type = "server",
								port = "${port}",
								executable = {
									-- CHANGE THIS to your path!
									command = "/Users/brandonlewallen/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb",
									args = { "--port", "${port}" },

									-- On windows you may have to uncomment this:
									-- detached = false,
								},
							}
							require("mason-nvim-dap").default_setup(config)
						end,
					},
				})
			end,
		},
	},
	config = function() 
		local icons = {
			Stopped             = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
			Breakpoint          = " ",
			BreakpointCondition = " ",
			BreakpointRejected  = { " ", "DiagnosticError" },
			LogPoint            = ".>",
		}
		vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })
		for name, sign in pairs(icons) do
			sign = type(sign) == "table" and sign or { sign }
			vim.fn.sign_define(
				"Dap" .. name,
				{ text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
			)
		end
	end,
}

