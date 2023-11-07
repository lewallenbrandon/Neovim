-- lazy.nvim
return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
	config = function()
		local noice = require("noice")
		noice.setup({
			cmdline = {

				view = "cmdline",
				format = {
					title= { "based" },
				},
			},
		})
	end,
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
