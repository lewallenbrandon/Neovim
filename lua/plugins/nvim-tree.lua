local M = {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		-- change folder arrow icons
		view = {
			width = 30,
		},
		renderer = {
			icons = {
				glyphs = {
					folder = {
						arrow_closed = "", -- arrow when folder is closed
						arrow_open = "", -- arrow when folder is open
					},
				},
			},
		},
		-- disable window_picker for
		-- explorer to work well with
		-- window splits
		actions = {
			open_file = {
				window_picker = {
					enable = false,
				},
			},
		},
		filters = {
			custom = { "^.git$", "^.DS_Store"}
		},

		--   	git = {
			--   		ignore = true,
			--   	},
		}

	}

	return M
