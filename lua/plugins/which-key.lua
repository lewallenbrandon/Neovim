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
				e = {
					name = "Explore",
				},
				f = {
					name = "File Tree",
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
				i = {
					name = "iTerm/Pwsh",
				},
				j = {
					name = "Jump",
				},
				m = {
					name = "Marks Management",
				},
				n = {
					name = "Navigation",
					u = {
						name = "Up",
					},
					d = {
						name = "Down",
					},
					c = {
						name = "Cursor",
					},
					m = {
						name = "Method",
					},
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
