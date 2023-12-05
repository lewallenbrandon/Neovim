local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = {        
		"nvim-tree/nvim-web-devicons",
		"meuter/lualine-so-fancy.nvim",
	},
	event = "VeryLazy",
	opts = function()
		local function get_venv()
			local venv = vim.env.VIRTUAL_ENV
			if venv then
				local env = string.match(venv, "[^/]+$")
				return " " .. env
			else
				return ""
			end
		end

		-- only show the clock when fullscreen (= it covers the menubar clock)
		local function clock()
			if vim.opt.columns:get() < 110 or vim.opt.lines:get() < 25 then
				return ""
			end

			local time = tostring(os.date("%I:%M %p"))
			if os.time() % 2 == 1 then
				time = time:gsub(":", " ")
			end -- make the `:` blink
			return time
		end

		return {

			options = {

				icons_enabled = true,
				theme = "auto",
				component_separators = "|",
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { {"filename", color= {fg="#e4e87b"}},
					--[[{require("noice").api.statusline.mode.get,
					cond = require("noice").api.statusline.mode.has,
					color = { fg = "#f7340c" }},]]--
				 },
				lualine_x = { "fancy_macro",{ get_venv }, "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location", { clock } },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = {"fancy_macro", "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = { "fugitive", "nvim-tree", "lazy" },
		}
	end,
}

return M
