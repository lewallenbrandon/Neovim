local M = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 30
	end,
	opts = { 
		defaults = {
			["<leader>"] = {
				f = {
					name = "File",
				},
				e = {
					name = "File Explorer",
				},
				w = {
					name = "Window Management",
					r = {
						name = "Resize Window",
					},
				},
				t = {
					name = "Tab Management",
					g = {
						name = "Go to Tab Number",
					},
				},
				u = {
					name = "Utilities",
				},
				b = {
					name = "Buffer Management",
					o = {
						name = "Open Buffer",
					},
				},
				m = {
					name = "Marks Management",
				},
				g = {
					name = "Git Management",
					t = {
						name = "Git Telescope",
					},
					r = {
						name = "Git Safe",
					},
					a = {
						name = "Git Add",
					},
					b = {
						name = "Git Branch",
					}
				},
				p = {
					name = "Programming Utilities",
					g = {
						name = "Go To...",

					},
					r = {
						name = "Refactor",
					},


				},
				q = {
					name = "Quick Fix",
				},
				s = {
					name = "Session Management",
				},

				-- Ignore Toplevel movement
				h = "which_key_ignore",
				j = "which_key_ignore",
				k = "which_key_ignore",
				l = "which_key_ignore",
				["<Tab>"] = "which_key_ignore",
				["<CR>"] = "which_key_ignore",
				["<space>"] = "which_key_ignore"
			},
		},
	},	
	config = function(_,opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}

return M
