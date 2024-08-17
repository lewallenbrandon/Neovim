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
				b = {
					name = "Buffer Management",
					o = {
						name = "Open Buffer",
					},
					t = {
						name= "Buffer Telescope"
					}
				},
				c = {
					name = "Changes"
				},
				d = {
					name = "Directory"
				},
				f = {
					name = "Find",
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
				j = {
					name = "Jump",
				},
				m = {
					name = "Marks Management",
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
					name = "Shell",
				},
				S = {
					name = "Session Management",
				},
				t = {
					name = "Tab Management",
					g = {
						name = "Go to Tab Number",
					},
					m = {
						name = "Move Tab",
					}
				},
				u = {
					name = "Utilities",
				},
				w = {
					name = "Window Management",
					r = {
						name = "Resize Window",
					},
				},
				z = {
					name = "Fold Management",
					m = {
						name = "Fold Mode",
					},
				},

				-- Ignore Toplevel movement
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
