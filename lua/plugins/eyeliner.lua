return {
	'jinh0/eyeliner.nvim',
	event = "VeryLazy",
	opts = {
		highlight_on_key = true, 
		dim = false,
	},
	config = function(_, opts)
		local eyeliner = require("eyeliner")
		eyeliner.setup(opts)
	end
}
