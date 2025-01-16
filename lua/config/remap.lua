-- Imports
local picker = Snacks.picker
local functions = require("config.functions")
local km = vim.keymap
local lsp = vim.lsp
local cmd = vim.cmd

-- Buffer Management
km.set("n", "<leader>b", "<nop>", { desc = "Buffer" })
km.set("n", "<leader>bm", function() picker.buffers() end, { desc = "Buffers" })
km.set("n", "<leader>bf", function() picker.lines() end, { desc = "Buffer Fuzzy Find" })
km.set("n", "<leader>b.", function() picker.resume() end, { desc = "Resume Buffers" })
km.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous Buffer" }) -- Previous buffer
km.set("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" }) -- Next buffer
km.set("n", "<leader>bov", ":vnew<CR>", { desc = "Open Buffer [V]" }) -- Open buffer vertically
km.set("n", "<leader>boh", ":new<CR>", { desc = "Open Buffer [H]" }) -- Open buffer horizontally

-- Change Management <Leader>c
km.set("n", "<leader>c", "<nop>", { desc = "Change" })
km.set("n", "<leader>co", ":changes <CR>", { desc = "Open Changes" }) -- Open changes
km.set("n", "<leader>cn", "g, ", { desc = "Next Change" }) -- Next change
km.set("n", "<leader>cp", "g; ", { desc = "Previous Change" }) -- Previous change

-- Fold Management
km.set("n", "<leader>z", "<nop>", { desc = "Fold" })
km.set("n", "<leader>zo", "za", { desc = "Toggle Fold" }) -- Toggle fold
km.set("n", "<leader>zO", "zA", { desc = "Toggle Folds Recursively" }) -- Toggle Folds Recursively
km.set("n", "<leader>zn", "zj", { desc = "Next Fold" }) -- Next fold
km.set("n", "<leader>zp", "zk", { desc = "Previous Fold" }) -- Previous fold
km.set("n", "<leader>zmi", ":set foldmethod=indent<CR>", { desc = "Set Fold Method to Indent" }) -- Set fold method to indent
km.set("n", "<leader>zms", ":set foldmethod=syntax<CR>", { desc = "Set Fold Method to Syntax" }) -- Set fold method to syntax
km.set("n", "<leader>zmm", ":set foldmethod=manual<CR>", { desc = "Set Fold Method to Manual" }) -- Set fold method to manual

-- Git Management
km.set("n", "<leader>g", "<nop>", { desc = "Git" })
km.set("n", "<leader>gs", ":LazyGit<CR>", { desc = "Git Status" }) -- Git status
km.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Line Blame" }) -- Toggle line blame

-- Jump Management <Leader>j
km.set("n", "<leader>j", "<nop>", { desc = "Jump" })
km.set("n", "<leader>jm", function() picker.jumps() end, { desc = "Jumps" })
km.set("n", "<leader>j.", function() picker.resume() end, { desc = "Resume Jumps" })
km.set("n", "<leader>jp", "<C-o>", { desc = "Jump Previous" }) -- Jump back
km.set("n", "<leader>jn", "<C-i>", { desc = "Jump Next" }) -- Jump forward

-- Kill
km.set("n", "<leader>k", "<nop>", { desc = "Kill" })
km.set("n", "<leader>ke", ":qa!<Cr>" , { desc = "Editor" }) -- Editor

-- Marks
km.set("n", "<leader>m", "<nop>", { desc = "Marks" })
km.set("n", "<leader>mm", function() picker.marks() end, { desc = "Marks" })
km.set("n", "<leader>m.", function() picker.resume() end, { desc = "Resume Marks" })

-- Misc.
km.set("i", "<C->>", "<C-t>", {desc = "Indent Text"})
km.set("i", "<C-<>", "<C-d>", {desc = "Deindent Text"})
km.set('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })             -- Move line down
km.set('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })               -- Move line up
km.set('n', '<C-d>', '<C-d>zz', { desc = "Move Screen Down" })                -- Move screen down while keeping cursor in middle
km.set('n', '<C-u>', '<C-u>zz', { desc = "Move Screen Up" })                  -- Move screen up while keeping cursor in middle
km.set('n', '<Esc>', '<Esc>:noh <CR>', { desc = "Clear Search Highlighting" }) -- Clear search highlighting
km.set('n', '<leader><leader>', ':', { desc = "Enter Command Mode" })         -- Enter command mode
km.set('n', 'n', 'nzz')
km.set('n', 'N', 'Nzz')
km.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit Terminal Mode" }) -- Exit terminal mode

-- Oil
km.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Programming Utility
km.set("n", "<leader>p", "<nop>", { desc = "Programming" })
km.set("n", "<leader>pd", function() picker.lsp_definitions() end, { desc = "Definition" })
km.set("n", "<leader>pr", function() picker.lsp_references() end, { desc = "References" })
km.set("n", "<leader>pa", function() picker.lsp_type_definitions() end, { desc = "Inititialization" })
km.set("n", "<leader>pi", function() picker.lsp_implementations() end, { desc = "Implementations" })
km.set("n", "<C-h>", function() lsp.buf.hover() end, { desc = "Hover" }) -- Hover
km.set("i", "<C-h>", function() lsp.buf.signature_help() end, { desc = "Signature help" }) -- Signature help
km.set("n", "<leader>pf", function() lsp.buf.format() end, { desc = "Format" }) -- FormatFormat
km.set("n", "<leader>pc", function() lsp.buf.code_action() end, { desc = "Code Actions" }) -- Format
km.set("n", "<leader>pn", function() lsp.buf.rename() end, { desc = "Rename" })

-- Quickfix Management
km.set("n", "<leader>q", "<nop>", { desc = "Quickfix" })
km.set("n", "<leader>qo", ":Trouble<CR>", { desc = "Open Error List" }) -- Open Error List
km.set("n", "<leader>qx", ":TroubleClose<CR>", { desc = "Close List" }) -- Close List
km.set("n", "<leader>qr", ":TroubleRefresh<CR>", { desc = "Refresh" }) -- Refresh
km.set("n", "<leader>qq", ":TroubleToggle quickfix<CR>", { desc = "Native Quickfix" }) -- Native Quickfix
km.set("n", "<leader>qn", function() vim.diagnostic.goto_next() end, { desc = "Next diagnostic" }) -- Next diagnostic
km.set("n", "<leader>qp", function() vim.diagnostic.goto_prev() end, { desc = "Previous diagnostic " }) -- Previous diagnostic

-- Ripgrep
km.set("n", "<leader>r", "<nop>", { desc = "Ripgrep" })
km.set("n", "<leader>rb", function() picker.grep_buffers() end, { desc = "Grep Open Buffers" })
km.set("n", "<leader>rs", function() picker.grep() end, { desc = "Grep" })
km.set("n", "<leader>rw", function() picker.grep_word() end, { desc = "Grep Word" })
km.set("n", "<leader>r.", function() picker.resume() end, { desc = "Resume Grep" })

-- Shell
km.set("n", "<leader>s", "<nop>", { desc = "Shell" })
km.set("n", "<leader>so", functions.get_os_terminal(), { desc = "Open Terminal" }) -- Open terminal/powershell
km.set("n", "<leader>sf", function() functions.focus_terminal_window() end, { desc = "Focus Terminal" }) -- Focus terminal/powershell
km.set("n", "<leader>sx", function() functions.close_terminal_window() end, { desc = "Close Terminal" }) -- Close terminal/powershell
km.set("n", "<leader>sl", function() functions.run_last_terminal_command() end, { desc = "Run Last Terminal Command" })

-- Tab Management
km.set("n", "<leader>t", "<nop>", { desc = "Tab" })
km.set("n", "<leader>to", ":tabnew<CR>", { desc = "New Tab" }) -- New tab
km.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" }) -- Close tab
km.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" }) -- Next tab
km.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" }) -- Previous tab
km.set("n", "<leader>tr", ":TabRename ", { desc = "Rename Tab" }) -- Rename tab
km.set("n", "<leader>tl", ":tablast<CR>", { desc = "Last Tab" }) -- Last tab
km.set("n", "<leader>tml", ":-tabmove<CR>", {desc = "Move Tab Left"}) -- Move tab left
km.set("n", "<leader>tmr", ":+tabmove<CR>", {desc = "Move Tab Right"}) -- Move tab Right

-- Snacks Picker
km.set("n", "<leader>f", "<nop>", { desc = "Find" })
km.set("n", "<leader>ff", function() picker.files() end, { desc = "Find files" })
km.set("n", "<leader>fg", function() picker.git_files() end, { desc = "Git files" })
km.set("n", "<leader>fr", function() picker.recent() end, { desc = "Recent files" })
km.set("n", "<leader>fv", function() picker.lsp_symbols() end, { desc = "Git files" })
km.set("n", "<leader>fc", function() picker.command_history() end, { desc = "Git files" })
km.set("n", "<leader>fy", function() picker.registers() end, { desc = "Registers" })
km.set("n", "<leader>f.", function() picker.resume() end, { desc = "Resume Files" })
--
-- Undotree commands
km.set("n", "<leader>u", "<nop>", { desc = "Undo" })
km.set("n", "<leader>uo", cmd.UndotreeToggle, {desc = "UndotreeToggle"})

-- Vim Editor
km.set("n", "<leader>v", "<nop>", { desc = "Vim" })
km.set("n", "<leader>vd", ":cd %:h<CR>", {desc = "CD Here"})

-- Visual Mode
km.set("v", "<", "<gv", { desc = "Indent Left" }) -- Indent left
km.set("v", ">", ">gv", { desc = "Indent Right" }) -- Indent right

-- Window management
km.set("n", "<leader>w", "<nop>", { desc = "Window" })
km.set("n", "<leader>wv", "<C-w>v <C-w>l", { desc = "Split Window Vertically" }) -- split window vertically
km.set("n", "<leader>wh", "<C-w>s <C-w>j", { desc = "Split Window Horizontally" }) -- Split window horizontally
km.set("n", "<leader>wx", ":close<CR>", { desc = "Close Current Split Window" }) -- Close current split window
km.set("n", "<leader>wt", "<C-w>T", {desc = "Move Window to its Own Tab"}) -- Move window to its own tab
km.set("n", "<leader>we", "<C-w>x", {desc= "Exchange with Next Window"}) -- Exchange with next window uw
km.set("n", "<leader>wre", "<C-w>=", { desc = "Equalize Window Sizes" }) -- Equalize window sizes
km.set("n", "<leader>wrm", ":vertical resize +999 <Bar>  resize +999<CR>", { desc = "Maximize Window Size" }) -- Maximize window size
km.set("n", "<leader>wrs", ":vertical resize -999 <CR> <C-w>w <CR>", { desc = "Minimize Window Size" }) -- Minimize window size
km.set("n", "<Left>", "<C-w>h", { desc = "Move to Left Window" }) -- Move to left window
km.set("n", "<Down>", "<C-w>j", { desc = "Move to Bottom Window" }) -- Move to bottom window
km.set("n", "<Up>", "<C-w>k", { desc = "Move to Top Window" }) -- Move to top window
km.set("n", "<Right>", "<C-w>l", { desc = "Move to Right Window" }) -- Move to right window
