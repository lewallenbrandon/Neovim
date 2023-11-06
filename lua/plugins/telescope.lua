local M = {
	"nvim-telescope/telescope.nvim",
	event = "BufReadPre",
	dependencies = {
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
	},
	opts = function()
		local actions = require("telescope.actions")
		local theme = require("telescope.themes")
		return {
			pickers = {
				find_files = { hidden = true },
				live_grep = {
				},
			},
			defaults = {
				mappings = { i = { ["<esc>"] = actions.close } },
			},

			extensions = {
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
					-- the default case_mode is "smart_case"
				},
				["ui-select"] = {
					theme.get_dropdown({
						-- even more opts
					}),
				},
			},
		}
	end,
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")
	end,
}

return M
