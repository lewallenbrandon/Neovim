return {
	'MeanderingProgrammer/render-markdown.nvim',
	opts = {},
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
	config = function() 
		local render = require('render-markdown')
		render.setup({
			bullet = {left_pad=2},
			heading = {position = 'inline',},
		})
	end,

}
