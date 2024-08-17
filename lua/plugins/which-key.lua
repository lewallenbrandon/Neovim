local M = {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 30
	end,
	config = function(_,opts)
		local wk = require("which-key")
		wk.add({
			{"<leader>b", group="Buffer"},
			{"<leader>bo", group="Open"},
			{"<leader>bt", group="Telescope"},
			{"<leader>c", group="Changes"},
			{"<leader>d", group="Directory"},
			{"<leader>f", group="Find"},
			{"<leader>g", group="Git"},
			{"<leader>ga", group="Add"},
			{"<leader>gb", group="Branch"},
			{"<leader>gr", group="Safe"},
			{"<leader>gt", group="Telescope"},
			{"<leader>j", group="Jump"},
			{"<leader>m", group="Marks"},
			{"<leader>p", group="Programming"},
			{"<leader>pg", group="Go To..."},
			{"<leader>pr", group="Refactor"},
			{"<leader>q", group="Quickfix"},
			{"<leader>qe", group="Edit"},
			{"<leader>s", group="Shell"},
			{"<leader>S", group="Session"},
			{"<leader>t", group="Tab"},
			{"<leader>tg", group="Go To..."},
			{"<leader>tm", group="Move"},
			{"<leader>u", group="Utilities"},
			{"<leader>w", group="Window"},
			{"<leader>wr", group="Resize"},
			{"<leader>z", group="Fold"},
			{"<leader>zm", group="Mode"},
		})
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}

return M
