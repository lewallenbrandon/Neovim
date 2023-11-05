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
			g = {
				name = "Go to Tab Number",
			},
		},
		H = {
			name = "Harpoon",
			g = { name = "Go to Harpoon Number" },
		},
		u = {
			name = "Utilities",
		},
		b = {
			name = "Buffer Management",
			o = {
				name = "Open Buffer",
			},
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
			a = {
				name = "Git Add",
			},
			b = {
				name = "Git Branch",
			}
		},
		-- Ignore Toplevel movement
		h = "which_key_ignore",
		j = "which_key_ignore",
		k = "which_key_ignore",
		l = "which_key_ignore",
		["<Tab>"] = "which_key_ignore",
		
	},

})

