
local M = {}

-- Terminal Commands
-- Focus terminal window
function M.focus_terminal_window()
	-- Iterate through all buffers
	for x, name in ipairs(vim.api.nvim_list_wins()) do
		local buf_handle
		local buf_name
		buf_handle = vim.api.nvim_win_get_buf(name)
		buf_name = vim.api.nvim_buf_get_name(buf_handle)
		local result = string.find(buf_name, "term:")
		if buf_name and result then
			vim.api.nvim_set_current_win(name)
		end
	end
end

-- Focus and run last command
function M.run_last_terminal_command()
	-- Focus the window
        M.focus_terminal_window()
	-- Enter insert mode and then press up arrow then enter
	local keys = vim.api.nvim_replace_termcodes("i<Up><CR><Esc><C-w><C-p>", true, false, true)
	vim.api.nvim_feedkeys(keys, "t", {})
end

-- Close terminal window
function M.close_terminal_window()
	-- Iterate through all buffers
	for x, name in ipairs(vim.api.nvim_list_wins()) do
		local buf_handle
		local buf_name
		buf_handle = vim.api.nvim_win_get_buf(name)
		buf_name = vim.api.nvim_buf_get_name(buf_handle)
		local result = string.find(buf_name, "term:")
		if buf_name and result then
			vim.api.nvim_win_close(name, true)
		end
	end
end

function M.get_os_terminal()
	return package.config:sub(1, 1) == "/" and ":term<CR>" or ":Pwsh<CR>"
end


return M
