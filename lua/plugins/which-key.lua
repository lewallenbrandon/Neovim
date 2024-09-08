local M = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 30
	end,
	opts = {
		notify = false,
	},
	config = function(_,opts)
		local wk = require("which-key")
		wk.add({
			{"<leader><tab>", hidden=true},
			{"<leader><leader>", hidden=true},
			{"<leader>b", group="Buffer"},
			{"<leader>b", group="Buffer"},
			{"<leader>bo", group="Open"},
			{"<leader>bt", group="Telescope"},
			{"<leader>c", group="Changes", icon="🔄"},
			{"<leader>f", group="Find"},
			{"<leader>g", group="Git"},
			{"<leader>ga", group="Add"},
			{"<leader>gb", group="Branch"},
			{"<leader>gr", group="Safe"},
			{"<leader>gt", group="Telescope"},
			{"<leader>j", group="Jump", icon="󰡘"},
			{"<leader>k", group="Kill", icon = "💀"},
			{"<leader>m", group="Marks", icon="󰛓"},
			{"<leader>p", group="Programming", icon=""},
			{"<leader>pg", group="Go To..."},
			{"<leader>pr", group="Refactor"},
			{"<leader>q", group="Quickfix"},
			{"<leader>qe", group="Edit"},
			{"<leader>s", group="Shell", icon=""},
			{"<leader>S", group="Session"},
			{"<leader>t", group="Tab"},
			{"<leader>tg", group="Go To..."},
			{"<leader>tm", group="Move"},
			{"<leader>u", group="Utilities", icon=""},
			{"<leader>w", group="Window"},
			{"<leader>wr", group="Resize"},
			{"<leader>z", group="Fold", icon="⌇"},
			{"<leader>zm", group="Mode"},
		})
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}

return M
