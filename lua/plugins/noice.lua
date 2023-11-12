-- lazy.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
		cmdline = {

			view = "cmdline",
			format = {
				cmdline = { pattern = "^:", icon = "🤖", lang = "vim" },
				search_down = {
					view = "cmdline"
				},
				search_up = {
					view = "cmdline"
				},
			},
		},
		messages = {
			enabled = true,
			view = "cmdline"
		},
		notify = {
			enabled = true,
			view = "cmdline"

		},
		popupmenu = {
			enabled = true,
			view = "cmdline"
		},

	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		--"rcarriga/nvim-notify",
	},
	--[[ config = function()
		local noice = require("noice")
		noice.setup({
			cmdline = {

				view = "cmdline",
				format = {
					title= { "based" },
					cmdline = { pattern = "^:", icon = "🤖", lang = "vim" }
				},
			},
			--messages = {
				--1enabled = false
			--},
			--notify = {
				--enabled = false
			--},
			popupmenu = {
				enabled = false
			}
		})
	end, ]]
}

--[[ views = {
					cmdline_popup = {
						position = {
							row = "5%",
							col = "95%",
						},
						size = {
							width = 60,
							height = "auto",
						},
						border = {
							style = "none",
							padding = { 2, 3 },
						}
					},
					popupmenu = {
						relative = "editor",
						position = {
							row = "95%",
							col = "50%",
						},
						size = {
							width = 60,
							height = 10,
						},
						border = {
							style = "rounded",
							padding = { 0, 1 },
						},
						win_options = {
							winhighlight =  "NormalFloat:NormalFloat,FloatBorder:FloatBorder" ,
						},
					},
				}, ]]
