return {
	'jinh0/eyeliner.nvim',
	event = "VeryLazy",
	opts = {
		highlight_on_key = true, 
		dim = true,
	},
	config = function(_, opts)
		local eyeliner = require("eyeliner")
		vim.api.nvim_set_hl(0, 'EyelinerPrimary', { fg='#4ADEDE', bold = true, underline = true })
		vim.api.nvim_set_hl(0, 'EyelinerSecondary', { fg='#FF0000', underline = true })
		eyeliner.setup(opts)

	end
}
