vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.set")
require("config.command")
require("config.lsp")


local augroup = vim.api.nvim_create_augroup
local blgroup = augroup('blgroup', {})
local api = vim.api
local o = vim.o
local fn = vim.fn

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        require("config.remap")
    end,
})

vim.filetype.add({
    extension = {
        templ = 'templ',
    }
})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = blgroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- go to last loc when opening a buffer
autocmd("BufReadPost", {
	group = blgroup,
	callback = function()
		local mark = vim.api.nvim_buf_get_mark(0, '"')
		local lcount = vim.api.nvim_buf_line_count(0)
		if mark[1] > 0 and mark[1] <= lcount then
			pcall(vim.api.nvim_win_set_cursor, 0, mark)
		end
	end,
})

autocmd("FileType", {
	group = blgroup,
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

autocmd("BufWinEnter", {
	desc = "auto change local current directory",
	group = augroup("auto-project-root", {}),
	callback = function(args)
		if api.nvim_get_option_value("buftype", { buf = args.buf }) ~= "" then
			return
		end

		local root = vim.fs.root(args.buf, function(name, path)
			local pattern = { ".git", "Cargo.toml", "go.mod" }
			local multipattern = { "build/compile_commands.json" }
			local abspath = { fn.stdpath("config") }
			local parentpath = { "~/.config", "~/prj" }

			return vim.iter(pattern):any(function(filepat)
				return filepat == name
			end) or vim.iter(multipattern):any(function(filepats)
				return vim.uv.fs_stat(vim.fs.joinpath(path, vim.fs.normalize(filepats)))
			end) or vim.iter(abspath):any(function(dirpath)
				return vim.fs.normalize(dirpath) == path
			end) or vim.iter(parentpath):any(function(ppath)
				return vim.fs.normalize(ppath) == vim.fs.dirname(path)
			end)
		end)
		if root then
			vim.cmd.lcd(root)
		end
	end,
})

autocmd("LspAttach", {
    callback = function(args)

          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
          vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = 0 })
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
          vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { buffer = 0 })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
    end,
})


autocmd("FileType", {
	desc = "Automatically Split help Buffers to the right",
	pattern = "help",
	command = "wincmd L",
})
