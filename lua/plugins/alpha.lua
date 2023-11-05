local M = {
	'goolord/alpha-nvim',
	event="VimEnter",
	enabled=true,
	init=false,
	dependencies = {
		'nvim-tree/nvim-web-devicons'},
	opts = function()

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
		return dashboard
	end,
	config = function(_, dashboard)
		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				once = true,
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			once = true,
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded "
				.. stats.loaded
				.. "/"
				.. stats.count
				.. " plugins in "
				.. ms
				.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}

return M
