-- lazy.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	enabled=false,
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
			view = "cmdline_popup"
		},

	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
}

