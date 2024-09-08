--[[

Below you will find the keymappings that made the most sense to me.
These map roughly to some of the defaults, but in cases where I thought the defaults were not intuitive, I changed them.
The leader key is heavily emphasized and the combination with which-key makes it easy to see what is available.
Note that there are some other mappings not listed below, like Harpoon, which are defined in their respective files.

API Reference:
vim.keymap.set(MODE, KEY_SEQUENCE, KEYS_IT_PRESSES/COMMAND_IT_RUNS, OPTIONS={desc="DESCRIPTION"})

Modes:
n = Normal
i = Insert
v = Visual

]]
--

local telebuiltin = require("telescope.builtin")
-- Leader key is space
vim.g.mapleader = " "

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Change Management <Leader>c
vim.keymap.set("n", "<leader>co", ":changes <CR>", { desc = "Open Changes" }) -- Open changes
vim.keymap.set("n", "<leader>cn", "g, ", { desc = "Next Change" }) -- Next change
vim.keymap.set("n", "<leader>cp", "g; ", { desc = "Previous Change" }) -- Previous change

-- Jump Management <Leader>j
vim.keymap.set("n", "<leader>jp", "<C-o>", { desc = "Jump Previous" }) -- Jump back
vim.keymap.set("n", "<leader>jn", "<C-i>", { desc = "Jump Next" }) -- Jump forward
vim.keymap.set("n", "<leader>jo", ":jump <CR>", {desc = "Open Jump List"}) -- Open jump list
vim.keymap.set("n", "<leader>jt", ":Telescope jumplist <CR>" , {desc = "Jump Telescope"}) -- Jump Telescope

-- Window management
vim.keymap.set("n", "<leader>wv", "<C-w>v <C-w>l", { desc = "Split Window Vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s <C-w>j", { desc = "Split Window Horizontally" }) -- Split window horizontally
vim.keymap.set("n", "<leader>wx", ":close<CR>", { desc = "Close Current Split Window" }) -- Close current split window
vim.keymap.set("n", "<leader>wt", "<C-w>T", {desc = "Move Window to its Own Tab"}) -- Move window to its own tab
vim.keymap.set("n", "<leader>we", "<C-w>x", {desc= "Exchange with Next Window"}) -- Exchange with next window uw
vim.keymap.set("n", "<leader>wre", "<C-w>=", { desc = "Equalize Window Sizes" }) -- Equalize window sizes
vim.keymap.set("n", "<leader>wrm", ":vertical resize +999 <Bar>  resize +999<CR>", { desc = "Maximize Window Size" }) -- Maximize window size
vim.keymap.set("n", "<leader>wrs", ":vertical resize -999 <CR> <C-w>w <CR>", { desc = "Minimize Window Size" }) -- Minimize window size
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", { desc = "Switch to Next Window" }) -- Switch to next window
vim.keymap.set("n", "<Left>", "<C-w>h", { desc = "Move to Left Window" }) -- Move to left window
vim.keymap.set("n", "<Down>", "<C-w>j", { desc = "Move to Bottom Window" }) -- Move to bottom window
vim.keymap.set("n", "<Up>", "<C-w>k", { desc = "Move to Top Window" }) -- Move to top window
vim.keymap.set("n", "<Right>", "<C-w>l", { desc = "Move to Right Window" }) -- Move to right window

-- Tab Management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "New Tab" }) -- New tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" }) -- Close tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" }) -- Next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" }) -- Previous tab
vim.keymap.set("n", "<leader>tr", ":TabRename ", { desc = "Rename Tab" }) -- Rename tab
vim.keymap.set("n", "<leader>tg1", "1gt", { desc = "First Tab" }) -- First tab
vim.keymap.set("n", "<leader>tg2", "2gt", { desc = "Second Tab" }) -- Second tab
vim.keymap.set("n", "<leader>tg3", "3gt", { desc = "Third Tab" }) -- Third tab
vim.keymap.set("n", "<leader>tg4", "4gt", { desc = "Fourth Tab" }) -- Fourth tab
vim.keymap.set("n", "<leader>tg5", "5gt", { desc = "Fifth Tab" }) -- Fifth tab
vim.keymap.set("n", "<leader>tg6", "6gt", { desc = "Sixth Tab" }) -- Sixth tab
vim.keymap.set("n", "<leader>tg7", "7gt", { desc = "Seventh Tab" }) -- Seventh tab
vim.keymap.set("n", "<leader>tg8", "8gt", { desc = "Eighth Tab" }) -- Eighth tab
vim.keymap.set("n", "<leader>tg9", "9gt", { desc = "Ninth Tab" }) -- Ninth tab
vim.keymap.set("n", "<leader>tg0", ":tablast<CR>", { desc = "Last Tab" }) -- Last tab
vim.keymap.set("n", "<leader>tml", ":-tabmove<CR>", {desc = "Move Tab Left"}) -- Move tab left
vim.keymap.set("n", "<leader>tmr", ":+tabmove<CR>", {desc = "Move Tab Right"}) -- Move tab Right

-- Visual Mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent Left" }) -- Indent left
vim.keymap.set("v", ">", ">gv", { desc = "Indent Right" }) -- Indent right


-- Fold Management
vim.keymap.set("n", "<leader>zo", "za", { desc = "Toggle Fold" }) -- Toggle fold
vim.keymap.set("n", "<leader>zO", "zA", { desc = "Toggle Folds Recursively" }) -- Toggle Folds Recursively
vim.keymap.set("n", "<leader>zn", "zj", { desc = "Next Fold" }) -- Next fold
vim.keymap.set("n", "<leader>zp", "zk", { desc = "Previous Fold" }) -- Previous fold
vim.keymap.set("n", "<leader>zmi", ":set foldmethod=indent<CR>", { desc = "Set Fold Method to Indent" }) -- Set fold method to indent
vim.keymap.set("n", "<leader>zms", ":set foldmethod=syntax<CR>", { desc = "Set Fold Method to Syntax" }) -- Set fold method to syntax
vim.keymap.set("n", "<leader>zmm", ":set foldmethod=manual<CR>", { desc = "Set Fold Method to Manual" }) -- Set fold method to manual

-- Buffer Management
vim.keymap.set("n", "<leader>bm", telebuiltin.buffers, { desc = "Buffers" }) -- Buffers
vim.keymap.set("n", "<leader>btf", telebuiltin.current_buffer_fuzzy_find, { desc = "Current Buffer Fuzzy Find" })
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous Buffer" }) -- Previous buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" }) -- Next buffer
vim.keymap.set("n", "<leader>bov", ":vnew<CR>", { desc = "Open Buffer [V]" }) -- Open buffer vertically
vim.keymap.set("n", "<leader>boh", ":new<CR>", { desc = "Open Buffer [H]" }) -- Open buffer horizontally

-- Misc.
vim.keymap.set("i", "<C->>", "<C-t>", {desc = "Indent Text"})
vim.keymap.set("i", "<C-<>", "<C-d>", {desc = "Deindent Text"})
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })             -- Move line down
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })               -- Move line up
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Move Screen Down" })                -- Move screen down while keeping cursor in middle
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Move Screen Up" })                  -- Move screen up while keeping cursor in middle
vim.keymap.set('n', '<Esc>', '<Esc>:noh <CR>', { desc = "Clear Search Highlighting" }) -- Clear search highlighting
vim.keymap.set('n', '<leader><leader>', ':', { desc = "Enter Command Mode" })         -- Enter command mode
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')


-- Terminal Commands
-- Focus terminal window
local function focus_terminal_window()
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
	return
end
-- Focus and run last command
local function run_last_terminal_command()
	-- Focus the window
        focus_terminal_window()
	-- Enter insert mode and then press up arrow then enter
	local keys = vim.api.nvim_replace_termcodes("i<Up><CR><Esc><C-w><C-p>", true, false, true)
	vim.api.nvim_feedkeys(keys, "t", {})
	return
end

-- Close terminal window
local function close_terminal_window()
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
	return
end

local function get_os_terminal()
	return package.config:sub(1, 1) == "/" and ":term<CR>" or ":Pwsh<CR>"
end

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit Terminal Mode" }) -- Exit terminal mode
vim.keymap.set("n", "<leader>so", get_os_terminal(), { desc = "Open Terminal" }) -- Open terminal/powershell
vim.keymap.set("n", "<leader>sf", function() focus_terminal_window() end, { desc = "Focus Terminal" }) -- Focus terminal/powershell
vim.keymap.set("n", "<leader>sx", function() close_terminal_window() end, { desc = "Close Terminal" }) -- Close terminal/powershell
vim.keymap.set("n", "<leader>sl", function() run_last_terminal_command() end, { desc = "Run Last Terminal Command" })


-- Utility commands
vim.keymap.set("n", "<leader>uqo", ":q<CR>", { desc = "Quit Open File (Safe)" }) -- Quit
vim.keymap.set("n", "<leader>uqf", ":q!<CR>", { desc = "Quit Open File (Force)" }) -- Quit
vim.keymap.set("n", "<leader>uqa", ":qa!<CR>", { desc = "Quit All Files (Force)" }) -- Quit
vim.keymap.set("n", "<leader>un", ":NoiceDismiss <CR>", { desc = "Clear Notifications" })    -- Clear notifications

-- Git Helper Functions
local function close_git_window()
	-- Iterate through all buffers
	for x, name in ipairs(vim.api.nvim_list_wins()) do
		local buf_handle
		local buf_name
		buf_handle = vim.api.nvim_win_get_buf(name)
		buf_name = vim.api.nvim_buf_get_name(buf_handle)
		local result = string.find(buf_name, "fugitive:")
		if buf_name and result then
			vim.api.nvim_win_close(name, true)
		end
	end
	return
end

-- Git Management
vim.keymap.set("n", "<leader>gs", ":LazyGit<CR>", { desc = "Git Status" }) -- Git status
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Line Blame" }) -- Toggle line blame

-- Kill
vim.keymap.set("n", "<leader>ke", ":qa!<Cr>" , { desc = "Editor" }) -- Editor

-- Quickfix Management
vim.keymap.set("n", "<leader>qo", ":Trouble<CR>", { desc = "Open Error List" }) -- Open Error List
vim.keymap.set("n", "<leader>qx", ":TroubleClose<CR>", { desc = "Close List" }) -- Close List
vim.keymap.set("n", "<leader>qr", ":TroubleRefresh<CR>", { desc = "Refresh" }) -- Refresh
vim.keymap.set("n", "<leader>qq", ":TroubleToggle quickfix<CR>", { desc = "Native Quickfix" }) -- Native Quickfix
vim.keymap.set("n", "<leader>qn", function()
	vim.diagnostic.goto_next()
end, { desc = "Next diagnostic" }) -- Next diagnostic
vim.keymap.set("n", "<leader>qp", function()
	vim.diagnostic.goto_prev()
end, { desc = "Previous diagnostic " }) -- Previous diagnostic

-- Programming Utility

vim.keymap.set("n", "<leader>pgd", function()
	vim.lsp.buf.definition()
end, { desc = "Definition" }) -- Go to definition
vim.keymap.set("n", "<leader>pgr", function()
	vim.lsp.buf.references()
end, { desc = "References" }) -- Go to references
vim.keymap.set("n", "<leader>pgn", function()
	vim.lsp.buf.declaration()
end, { desc = "Initalization" })
vim.keymap.set("n", "<leader>ph", function()
	vim.lsp.buf.hover()
end, { desc = "Hover" }) -- Hover
vim.keymap.set("n", "<leader>prf", function()
	vim.lsp.buf.format()
end, { desc = "Format" }) -- FormatFormat
vim.keymap.set("n", "<leader>prc", function()
	vim.lsp.buf.code_action()
end, { desc = "Code Actions" }) -- Format
vim.keymap.set("n", "<leader>pgi", function()
	vim.lsp.buf.implementation()
end, { desc = "Implementation" })
vim.keymap.set("n", "<leader>prr", function()
	vim.lsp.buf.rename()
end, { desc = "Rename" })
vim.keymap.set("i", "<C-h>", function()
	vim.lsp.buf.signature_help()
end, { desc = "Signature help" }) -- Signature help

-- Telescope
vim.keymap.set("n", "<leader>ff", telebuiltin.find_files, { desc = "Find files" }) -- Find files
vim.keymap.set("n", "<leader>fg", telebuiltin.git_files, { desc = "Git files" }) -- Git files
vim.keymap.set("n", "<leader>fs", function()
	telebuiltin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Grep string" }) -- Grep string
vim.keymap.set("n", "<leader>fv", telebuiltin.treesitter, { desc = "Treesitter Variables" }) -- Treesitter
vim.keymap.set("n", "<leader>fh", telebuiltin.help_tags, { desc = "Help Tags" }) -- Help Tags
vim.keymap.set("n", "<leader>fc", telebuiltin.command_history, { desc = "Command History" }) -- Commands
vim.keymap.set("n", "<leader>f/", telebuiltin.search_history, { desc = "Search History" }) -- Search History


-- Marks
vim.keymap.set("n", "<leader>mm", telebuiltin.marks, { desc = "Marks" }) -- Marks

