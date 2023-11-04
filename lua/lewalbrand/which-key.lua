local wk = require("which-key")

wk.register({
	["<leader>"] = {
		f = {
			name = "File",
		},
		e = {
			name = "File Explorer",
		},
		w = {
			name = "Window Management",
		},
		t = {
			name = "Tab Management",
		},
		H = {
			name = "Harpoon",
		},
		b = {
			name = "Buffer Management",
		},
		m = {
			name = "Marks Management",
		},
		g = {
			name = "Git Management",
			t = {
				name = "Git Telescope",
			},
			r = {
				name = "Git Safe",
			},
		},
		-- Ignore Toplevel movement
		h = "which_key_ignore",
		j = "which_key_ignore",
		k = "which_key_ignore",
		l = "which_key_ignore",
		["<Tab>"] = "which_key_ignore",
		


	}
})

