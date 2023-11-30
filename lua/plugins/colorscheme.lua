local theme = "Github"

local function return_theme(theme) 

	local M = {
		"kyazdani42/blue-moon",
		lazy = false,
		priority = 1000,
		opts = function()
			local colors = require("utils").git_colors
			return {
				style = "night",
				-- hide_inactive_statusline = true,
				on_highlights = function(hl, c)
					hl.GitSignsAdd = {
						fg = colors.GitAdd,
					}
					hl.GitSignsChange = {
						fg = colors.GitChange,
					}
					hl.GitSignsDelete = {
						fg = colors.GitDelete,
					}
				end,
			}
		end,
		config = function(_, opts)
			local tokyonight = require("blue-moon")
			tokyonight.setup(opts)
			tokyonight.load()
		end,
	}

	local G = {
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		opts = function()
			local colors = require("utils").git_colors
			return {
				style = "github_dark_dimmed",
				-- hide_inactive_statusline = true,
				on_highlights = function(hl, c)
					hl.GitSignsAdd = {
						fg = colors.GitAdd,
					}
					hl.GitSignsChange = {
						fg = colors.GitChange,
					}
					hl.GitSignsDelete = {
						fg = colors.GitDelete,
					}
				end,
			}
		end,
		config = function(_, opts)
			local tokyonight = require("github-theme")
			tokyonight.setup(opts)
			tokyonight.load()
			--local spec = require('github-theme.spec').load('github_dark_dimmed')
			--print(vim.inspect(spec))
			vim.cmd('colorscheme github_dark_dimmed')
	 	end,
	}


	local T = {
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = function()
			local colors = require("utils").git_colors
			return {
				style = "night",
				-- hide_inactive_statusline = true,
				on_highlights = function(hl, c)
					hl.GitSignsAdd = {
						fg = colors.GitAdd,
					}
					hl.GitSignsChange = {
						fg = colors.GitChange,
					}
					hl.GitSignsDelete = {
						fg = colors.GitDelete,
					}
				end,
			}
		end,
		config = function(_, opts)
			local tokyonight = require("tokyonight")
			tokyonight.setup(opts)
			tokyonight.load()
		end,
	}

	if theme == "Github" then
		return G
	elseif theme == "Tokyonight" then
		return T
	elseif theme == "Blue-moon" then
		return M
	end

end

return return_theme(theme)
