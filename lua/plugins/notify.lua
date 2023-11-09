return {
	"rcarriga/nvim-notify",
	keys = {
		{
			"<leader>un",
			function()
				require("notify").dismiss({ silent = true, pending = true })
			end,
			desc = "Dismiss all Notifications",
		},
	},
	opts = {
		max_height = function()
			return math.floor(vim.o.lines * 0.75)
		end,
		render="simple",
		timeout=1000000,
		keep = function()
			return true
		end,
		top_down = false,
		max_width = function()
			return math.floor(vim.o.columns * 0.75)
		end,
		on_open = function(win)
			vim.api.nvim_win_set_config(win, { zindex = 100 })
		end,
	},
	-- when noice is not enabled, install notify on VeryLazy
}
