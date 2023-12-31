local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

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
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
