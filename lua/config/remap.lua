-- Imports
--local telebuiltin = require("telescope.builtin")
local functions = require("config.functions")
local km = vim.keymap
local lsp = vim.lsp
local cmd = vim.cmd

-- Buffer Management
km.set("n", "<leader>b", "<nop>", { desc = "Buffer" }) -- Find files
--km.set("n", "<leader>bm", telebuiltin.buffers, { desc = "Buffers" }) -- Buffers
--km.set("n", "<leader>bf", telebuiltin.current_buffer_fuzzy_find, { desc = "Current Buffer Fuzzy Find" })
km.set("n", "<leader>bp", ":bp<CR>", { desc = "Previous Buffer" }) -- Previous buffer
km.set("n", "<leader>bn", ":bn<CR>", { desc = "Next Buffer" }) -- Next buffer
km.set("n", "<leader>bov", ":vnew<CR>", { desc = "Open Buffer [V]" }) -- Open buffer vertically
km.set("n", "<leader>boh", ":new<CR>", { desc = "Open Buffer [H]" }) -- Open buffer horizontally

-- Change Management <Leader>c
km.set("n", "<leader>c", "<nop>", { desc = "Change" }) -- Find files
km.set("n", "<leader>co", ":changes <CR>", { desc = "Open Changes" }) -- Open changes
km.set("n", "<leader>cn", "g, ", { desc = "Next Change" }) -- Next change
km.set("n", "<leader>cp", "g; ", { desc = "Previous Change" }) -- Previous change

-- Fold Management
km.set("n", "<leader>z", "<nop>", { desc = "Fold" }) -- Find files
km.set("n", "<leader>zo", "za", { desc = "Toggle Fold" }) -- Toggle fold
km.set("n", "<leader>zO", "zA", { desc = "Toggle Folds Recursively" }) -- Toggle Folds Recursively
km.set("n", "<leader>zn", "zj", { desc = "Next Fold" }) -- Next fold
km.set("n", "<leader>zp", "zk", { desc = "Previous Fold" }) -- Previous fold
km.set("n", "<leader>zmi", ":set foldmethod=indent<CR>", { desc = "Set Fold Method to Indent" }) -- Set fold method to indent
km.set("n", "<leader>zms", ":set foldmethod=syntax<CR>", { desc = "Set Fold Method to Syntax" }) -- Set fold method to syntax
km.set("n", "<leader>zmm", ":set foldmethod=manual<CR>", { desc = "Set Fold Method to Manual" }) -- Set fold method to manual

-- Git Management
km.set("n", "<leader>g", "<nop>", { desc = "Git" }) -- Find files
km.set("n", "<leader>gs", ":LazyGit<CR>", { desc = "Git Status" }) -- Git status
km.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Line Blame" }) -- Toggle line blame

-- Jump Management <Leader>j
km.set("n", "<leader>j", "<nop>", { desc = "Jump" }) -- Find files
km.set("n", "<leader>jp", "<C-o>", { desc = "Jump Previous" }) -- Jump back
km.set("n", "<leader>jn", "<C-i>", { desc = "Jump Next" }) -- Jump forward
km.set("n", "<leader>jo", ":jump <CR>", {desc = "Open Jump List"}) -- Open jump list
km.set("n", "<leader>jt", ":Telescope jumplist <CR>" , {desc = "Jump Telescope"}) -- Jump Telescope

-- Kill
km.set("n", "<leader>k", "<nop>", { desc = "Kill" }) -- Find files
km.set("n", "<leader>ke", ":qa!<Cr>" , { desc = "Editor" }) -- Editor

-- Marks
km.set("n", "<leader>m", "<nop>", { desc = "Marks" }) -- Find files
--km.set("n", "<leader>mm", telebuiltin.marks, { desc = "Marks" }) -- Marks

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
km.set("n", "<leader>p", "<nop>", { desc = "Programming" }) -- Find files
km.set("n", "<leader>pr", function() lsp.buf.references() end, { desc = "References" }) -- Go to references
km.set("n", "<leader>pa", function() lsp.buf.declaration() end, { desc = "Initalization" })
km.set("n", "<C-h>", function() lsp.buf.hover() end, { desc = "Hover" }) -- Hover
km.set("i", "<C-h>", function() lsp.buf.signature_help() end, { desc = "Signature help" }) -- Signature help
km.set("n", "<leader>pf", function() lsp.buf.format() end, { desc = "Format" }) -- FormatFormat
km.set("n", "<leader>pc", function() lsp.buf.code_action() end, { desc = "Code Actions" }) -- Format
km.set("n", "<leader>pi", function() lsp.buf.implementation() end, { desc = "Implementation" })
km.set("n", "<leader>pn", function() lsp.buf.rename() end, { desc = "Rename" })

-- Quickfix Management
km.set("n", "<leader>q", "<nop>", { desc = "Quickfix" }) -- Find files
km.set("n", "<leader>qo", ":Trouble<CR>", { desc = "Open Error List" }) -- Open Error List
km.set("n", "<leader>qx", ":TroubleClose<CR>", { desc = "Close List" }) -- Close List
km.set("n", "<leader>qr", ":TroubleRefresh<CR>", { desc = "Refresh" }) -- Refresh
km.set("n", "<leader>qq", ":TroubleToggle quickfix<CR>", { desc = "Native Quickfix" }) -- Native Quickfix
km.set("n", "<leader>qn", function() vim.diagnostic.goto_next() end, { desc = "Next diagnostic" }) -- Next diagnostic
km.set("n", "<leader>qp", function() vim.diagnostic.goto_prev() end, { desc = "Previous diagnostic " }) -- Previous diagnostic


--local function live_grep_with_selected_type()
--    local handle = io.popen("rg --type-list")
--    local output = handle:read("*a")
--    handle:close()
--
--    -- Parse the output into a table of options
--    local options = {}
--    for line in output:gmatch("[^\r\n]+") do
--        table.insert(options, line)
--    end
--
--    -- Prompt the user to select a file type
--    local selected_type = nil -- Initialize variable to store the selected type
--
--    -- Set default values for optional parameters
--    local prompt = "Select an option:"
--
--    -- Build the list of options for the user
--    local items = {}
--    for i, option in ipairs(options) do
--        table.insert(items, string.format("%d. %s", i, option))
--    end
--
--    -- Display the prompt and options to the user
--    vim.ui.select(items, {
--        prompt = prompt,
--    }, function(choice)
--            if choice then
--                local dot_index = string.find(choice, "%.")
--                local substr = string.sub(choice, dot_index + 2)
--                local colon_index = string.find(substr, ":")
--                local col_substr = string.sub(substr, 1, colon_index - 1)
--                --telebuiltin.live_grep({
--                    type_filter = col_substr,
--                })
--            end
--        end)
--end

-- In your init.lua or plugin configuration file

-- Initialize the flag variable (defaults to false)
local flag_table = {regex_grep = false}

-- Function to toggle the flag
local function toggle_my_flag(flag)
    flag_table[flag] = not flag_table[flag]
end

-- Function to check the flag's value
local function check_my_flag(flag)
    if flag_table[flag] then
        print("Flag value is: true")
    else
        print("Flag value is: false")
    end
end

-- Ripgrep
km.set("n", "<leader>r", "<nop>", { desc = "Ripgrep" }) -- Find files
--km.set("n", "<leader>ra", function() toggle_my_flag("regex_grep") end, { desc = "Live Grep (Type Filtered)" }) -- Grep string
--km.set("n", "<leader>rb", function() check_my_flag("regex_grep") end, { desc = "Live Grep (Type Filtered)" }) -- Grep string
--km.set("n", "<leader>rt", function() live_grep_with_selected_type() end, { desc = "Live Grep (Type Filtered)" }) -- Grep string
--km.set("n", "<leader>rl", function() telebuiltin.live_grep() end, { desc = "Live Grep" }) -- Grep string
--km.set("n", "<leader>rs", function() telebuiltin.grep_string({ search = vim.fn.input("String: ") }) end, { desc = "Grep string" })
--km.set("n", "<leader>rw", function() telebuiltin.grep_string() end, { desc = "Grep word" }) -- Grep string
--km.set("n", "<leader>rx", function() telebuiltin.grep_string({ search = vim.fn.input("String: "), use_regex=true}) end, { desc = "Grep Regex" })

-- Shell
km.set("n", "<leader>s", "<nop>", { desc = "Shell" }) -- Find files
km.set("n", "<leader>so", functions.get_os_terminal(), { desc = "Open Terminal" }) -- Open terminal/powershell
km.set("n", "<leader>sf", function() functions.focus_terminal_window() end, { desc = "Focus Terminal" }) -- Focus terminal/powershell
km.set("n", "<leader>sx", function() functions.close_terminal_window() end, { desc = "Close Terminal" }) -- Close terminal/powershell
km.set("n", "<leader>sl", function() functions.run_last_terminal_command() end, { desc = "Run Last Terminal Command" })

-- Tab Management
km.set("n", "<leader>t", "<nop>", { desc = "Tab" }) -- Find files
km.set("n", "<leader>to", ":tabnew<CR>", { desc = "New Tab" }) -- New tab
km.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" }) -- Close tab
km.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" }) -- Next tab
km.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" }) -- Previous tab
km.set("n", "<leader>tr", ":TabRename ", { desc = "Rename Tab" }) -- Rename tab
km.set("n", "<leader>tl", ":tablast<CR>", { desc = "Last Tab" }) -- Last tab
km.set("n", "<leader>tml", ":-tabmove<CR>", {desc = "Move Tab Left"}) -- Move tab left
km.set("n", "<leader>tmr", ":+tabmove<CR>", {desc = "Move Tab Right"}) -- Move tab Right

-- Telescope
--km.set("n", "<leader>f", "<nop>", { desc = "Find" }) -- Find files
km.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find files" }) -- Find files
--km.set("n", "<leader>ff", telebuiltin.find_files, { desc = "Find files" }) -- Find files
--km.set("n", "<leader>fg", telebuiltin.git_files, { desc = "Git files" }) -- Git files
--km.set("n", "<leader>fv", telebuiltin.treesitter, { desc = "Treesitter Variables" }) -- Treesitter
--km.set("n", "<leader>fc", telebuiltin.command_history, { desc = "Command History" }) -- Commands
--km.set("n", "<leader>f/", telebuiltin.search_history, { desc = "Search History" }) -- Search History
--
-- Undotree commands
km.set("n", "<leader>u", "<nop>", { desc = "Undo" }) -- Find files
km.set("n", "<leader>uo", cmd.UndotreeToggle, {desc = "UndotreeToggle"})

-- Vim Editor
km.set("n", "<leader>v", "<nop>", { desc = "Vim" }) -- Find files
km.set("n", "<leader>vd", ":cd %:h<CR>", {desc = "CD Here"})

-- Visual Mode
km.set("v", "<", "<gv", { desc = "Indent Left" }) -- Indent left
km.set("v", ">", ">gv", { desc = "Indent Right" }) -- Indent right

-- Window management
km.set("n", "<leader>w", "<nop>", { desc = "Window" }) -- Find files
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
