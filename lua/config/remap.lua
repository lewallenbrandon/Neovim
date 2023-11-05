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

-- Leader key is space
vim.g.mapleader = " "

-- Window management
vim.keymap.set("n", "<leader>wv", "<C-w>v <C-w>l", { desc = "Split Window Vertically" })                              -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s <C-w>j", { desc = "Split Window Horizontally" })                            -- Split window horizontally
vim.keymap.set("n", "<leader>wx", ":close<CR>", { desc = "Close Current Split Window" })                              -- Close current split window
vim.keymap.set("n", "<leader>wre", "<C-w>=", { desc = "Equalize Window Sizes" })                                      -- Equalize window sizes
vim.keymap.set("n", "<leader>wrm", ":vertical resize +999 <Bar>  resize +999<CR>", { desc = "Maximize Window Size" }) -- Maximize window size

vim.keymap.set("n", "<leader>wrs", ":vertical resize -999 <CR> <C-w>w <CR>", { desc = "Minimize Window Size" })       -- Minimize window size
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", { desc = "Switch to Next Window" })                                    -- Switch to next window
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to Left Window" })                                          -- Move to left window
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to Bottom Window" })                                        -- Move to bottom window
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to Top Window" })                                           -- Move to top window
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to Right Window" })                                         -- Move to right window




-- Tab Management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "New Tab" })     -- New tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" }) -- Close tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" })      -- Next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" })  -- Previous tab
vim.keymap.set('n', "<leader>tr", ":TabRename ", { desc = "Rename Tab" })  -- Rename tab
vim.keymap.set('n', "<leader>tg1", "1gt", { desc = "First Tab" })          -- First tab
vim.keymap.set('n', "<leader>tg2", "2gt", { desc = "Second Tab" })         -- Second tab
vim.keymap.set('n', "<leader>tg3", "3gt", { desc = "Third Tab" })          -- Third tab
vim.keymap.set('n', "<leader>tg4", "4gt", { desc = "Fourth Tab" })         -- Fourth tab
vim.keymap.set('n', "<leader>tg5", "5gt", { desc = "Fifth Tab" })          -- Fifth tab
vim.keymap.set('n', "<leader>tg6", "6gt", { desc = "Sixth Tab" })          -- Sixth tab
vim.keymap.set('n', "<leader>tg7", "7gt", { desc = "Seventh Tab" })        -- Seventh tab
vim.keymap.set('n', "<leader>tg8", "8gt", { desc = "Eighth Tab" })         -- Eighth tab
vim.keymap.set('n', "<leader>tg9", "9gt", { desc = "Ninth Tab" })          -- Ninth tab
vim.keymap.set('n', "<leader>tg0", ":tablast<CR>", { desc = "Last Tab" })  -- Last tab




-- File Explorer
vim.keymap.set("n", "<leader>eo", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })                -- Toggle file explorer
vim.keymap.set("n", "<leader>ex", ":NvimTreeClose<CR>", { desc = "Close File Explorer" })                  -- Close file explore
vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh File Explorer" })              -- Refresh file explorer
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus File Explorer" })                  -- Focus file explorer
vim.keymap.set("n", "<leader>es", ":NvimTreeFindFile<CR>", { desc = "Search and Focus in File Explorer" }) -- Search and Focus file in file explorer
vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse Folder" })                   -- Collapse file explorer

-- Harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>Hf", mark.add_file, {desc="Harpoon File"}) -- Add current file to list
vim.keymap.set("n", "<leader>Hm", ui.toggle_quick_menu, {desc="Toggle Harpoon Menu"}) -- Toggle quick menu
vim.keymap.set("n", "<leader>Hg1", function () ui.nav_file(1) end, {desc="Harpoon 1"}) -- Navigate to file in position 1
vim.keymap.set("n", "<leader>Hg2", function () ui.nav_file(2) end, {desc="Harpoon 2"}) -- Navigate to file in position 2
vim.keymap.set("n", "<leader>Hg3", function () ui.nav_file(3) end, {desc="Harpoon 3"}) -- Navigate to file in position 3
vim.keymap.set("n", "<leader>Hg4", function () ui.nav_file(4) end, {desc="Harpoon 4"}) -- Navigate to file in position 4



-- Visual Mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent Left" })  -- Indent left
vim.keymap.set("v", ">", ">gv", { desc = "Indent Right" }) -- Indent right





-- Buffer Management
-- Already have a buffer menu command on bm using telescope
vim.keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous Buffer" })    -- Previous buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" })        -- Next buffer
vim.keymap.set('n', '<leader>bov', ':vnew<CR>', { desc = "Open Buffer [V]" }) -- Open buffer vertically
vim.keymap.set('n', '<leader>boh', ':new<CR>', { desc = "Open Buffer [H]" })  -- Open buffer horizontally




-- Miscellaneous
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })             -- Move line down
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })               -- Move line up
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Move Screen Down" })                -- Move screen down while keeping cursor in middle
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Move Screen Up" })                  -- Move screen up while keeping cursor in middle
vim.keymap.set('n', '<Esc>', '<Esc>:noh<CR>', { desc = "Clear Search Highlighting" }) -- Clear search highlighting
vim.keymap.set('n', '<leader><leader>', ':', { desc = "Enter Command Mode" })         -- Enter command mode
vim.keymap.set('n', '<leader><CR>', '@@', { desc = "Repeat Last Macro" })             -- Repeat last macro




-- Utility commands
local function get_os()
	return package.config:sub(1, 1) == '/' and ":term<CR>" or ":Pwsh<CR>"
end

vim.keymap.set("n", "<leader>uq", ":q<CR>", { desc = "Quit" })                         -- Quit
vim.keymap.set("n", "<leader>ut", get_os(), { desc = "Open Terminal" })                -- Open terminal/powershell
vim.keymap.set("n", "<leader>uw", ":w<CR>", { desc = "Save" })                         -- Save
vim.keymap.set("n", "<leader>us", ":w<CR>:source %<CR>", { desc = "Save and Source" }) -- Save and source

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
vim.keymap.set('n', '<leader>gs', ':Git<CR>', { desc = "Git Status" })                                             -- Git status
vim.keymap.set('n', '<leader>gx', function() close_git_window() end, {desc = "Close Git Window"})
vim.keymap.set('n', '<leader>gl', ':Git log --oneline<CR>', { desc = "Git Commits" })                              -- Git commit history one line
vim.keymap.set('n', '<leader>gf', ':Git fetch<CR>', { desc = "Git Fetch" })                                        -- Git fetch
vim.keymap.set('n', '<leader>gp', ':Git pull<CR>', { desc = "Git Pull" })                                          -- Git pull
vim.keymap.set('n', '<leader>gaf', ':Git add % <CR>', { desc = "Git Add This File" })                              -- Git add file
vim.keymap.set('n', '<leader>gau', ':Git add -u<CR>', { desc = "Git Add -u" })                                     -- Git add update
vim.keymap.set('n', '<leader>gaa', ':Git add -A<CR>', { desc = "Git Add -A" })                                     -- Git add all
vim.keymap.set('n', '<leader>gac', ':Git add -u <Bar> Git commit -m ""<Left>', { desc = "Git Add -u and Commit" }) -- Git add update and commit
vim.keymap.set('n', '<leader>gc', ':Git commit -m ""<Left>', { desc = "Git Commit" })                              -- Git commit
vim.keymap.set('n', '<leader>gbl', ':Git branch -l<CR>', { desc = "List Branches" })                                -- Git branches
vim.keymap.set('n', '<leader>gbc', ':Git checkout -b ', {desc="Create Branch"}) -- Create Branch
vim.keymap.set('n', '<leader>grp', ':Git push<CR>', { desc = "Git Push" })                                         -- Git push. r added as safety


-- Quickfix Management
vim.keymap.set('n', '<leader>qo', ':Trouble<CR>', { desc = "Open Error List" })                                  -- Open Error List
vim.keymap.set('n', '<leader>qx', ':TroubleClose<CR>', { desc = "Close List" })                                  -- Close List
vim.keymap.set('n', '<leader>qr', ':TroubleRefresh<CR>', { desc = "Refresh" })                                   -- Refresh
vim.keymap.set('n', '<leader>qq', ':TroubleToggle quickfix<CR>', { desc = "Native Quickfix" })                   -- Native Quickfix
vim.keymap.set("n", "<leader>qn", function() vim.diagnostic.goto_next() end, { desc = "Next diagnostic" })       -- Next diagnostic
vim.keymap.set("n", "<leader>qp", function() vim.diagnostic.goto_prev() end, { desc = "Previous diagnostic " })  -- Previous diagnostic


-- Programming Utility

vim.keymap.set("n", "<leader>pgd", function() vim.lsp.buf.definition() end, { desc = "Definition" })  -- Go to definition
vim.keymap.set("n", "<leader>pgr", function() vim.lsp.buf.references() end, { desc = "References" })  -- Go to references
vim.keymap.set("n", "<leader>pgn", function() vim.lsp.buf.declaration() end, { desc = "Initalization" })
vim.keymap.set("n", "<leader>ph", function() vim.lsp.buf.hover() end, { desc = "Hover" })                   -- Hover
vim.keymap.set("n", "<leader>prf", function() vim.lsp.buf.format() end, { desc = "Format" })                -- FormatFormat
vim.keymap.set("n", "<leader>prc", function() vim.lsp.buf.code_action() end, { desc = "Code Actions" })     -- Format
vim.keymap.set("n", "<leader>pgi", function() vim.lsp.buf.implementation() end, { desc = "Implementation" })
vim.keymap.set("n", "<leader>prr", function() vim.lsp.buf.rename() end, { desc = "Rename" })
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, { desc = "Signature help" }) -- Signature help


-- Telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc="Find files"}) -- Find files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {desc="Git files"}) -- Git files
vim.keymap.set('n', '<leader>fs', function() builtin.grep_string({search = vim.fn.input("Grep > ")}) end, {desc="Grep string"}) -- Grep string
vim.keymap.set('n', '<leader>fv', builtin.treesitter, {desc="Treesitter Variables"}) -- Treesitter

vim.keymap.set('n', '<leader>bm', builtin.buffers, {desc="Buffers"}) -- Buffers
vim.keymap.set('n', '<leader>mm', builtin.marks, {desc="Marks"}) -- Marks

-- Utility Commands for finding info or doing more advanced stuff
vim.keymap.set('n', '<leader>uh', builtin.help_tags, {desc="Help Tags"}) -- Help Tags
vim.keymap.set('n', '<leader>uc', builtin.command_history, {desc="Command History"}) -- Commands
vim.keymap.set('n', '<leader>us', builtin.search_history, {desc="Search History"}) -- Search History


-- Git Management
vim.keymap.set('n', '<leader>gts', builtin.git_status, {desc="Git Status"}) -- Git Status
vim.keymap.set('n', '<leader>gtc', builtin.git_commits, {desc="Git Commits"}) -- Git Commits
vim.keymap.set('n', '<leader>gtb', builtin.git_branches, {desc="Git Branches"}) -- Git Branches

