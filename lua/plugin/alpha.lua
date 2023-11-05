local M = {
	'goolord/alpha-nvim', 
	config = function()

		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			[[                                                                              ]],
			[[ ██████   ██████                    █████       ███                           ]], 
			[[░░██████ ██████                    ░░███       ░░░                            ]], 
			[[ ░███░█████░███   ██████    ██████  ░███████   ████  ████████    ██████       ]], 
			[[ ░███░░███ ░███  ░░░░░███  ███░░███ ░███░░███ ░░███ ░░███░░███  ███░░███      ]], 
			[[ ░███ ░░░  ░███   ███████ ░███ ░░░  ░███ ░███  ░███  ░███ ░███ ░███████       ]], 
			[[ ░███      ░███  ███░░███ ░███  ███ ░███ ░███  ░███  ░███ ░███ ░███░░░        ]], 
			[[ █████     █████░░████████░░██████  ████ █████ █████ ████ █████░░██████       ]], 
			[[░░░░░     ░░░░░  ░░░░░░░░  ░░░░░░  ░░░░ ░░░░░ ░░░░░ ░░░░ ░░░░░  ░░░░░░        ]], 
			[[ █████                                                ███                     ]], 
			[[░░███                                                ░░░                      ]], 
			[[ ░███         ██████   ██████   ████████  ████████   ████  ████████    ███████]],
			[[ ░███        ███░░███ ░░░░░███ ░░███░░███░░███░░███ ░░███ ░░███░░███  ███░░███]],
			[[ ░███       ░███████   ███████  ░███ ░░░  ░███ ░███  ░███  ░███ ░███ ░███ ░███]],
			[[ ░███      █░███░░░   ███░░███  ░███      ░███ ░███  ░███  ░███ ░███ ░███ ░███]],
			[[ ███████████░░██████ ░░████████ █████     ████ █████ █████ ████ █████░░███████]],
			[[░░░░░░░░░░░  ░░░░░░   ░░░░░░░░ ░░░░░     ░░░░ ░░░░░ ░░░░░ ░░░░ ░░░░░  ░░░░░███]],
			[[                                                                      ███ ░███]],
			[[                                                                     ░░██████ ]], 
			[[                                                                      ░░░░░░  ]], 

		}
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("g", "  Git Status", ":Git <CR>"),
			dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
			dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
		}



		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true
		require'alpha'.setup(dashboard.opts)
	end
}

return M
