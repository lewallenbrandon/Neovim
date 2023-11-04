vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Window management
vim.keymap.set("n", "<leader>wv", "<C-w>v", {desc="Split Window Vertically"}) -- split window vertically
vim.keymap.set("n", "<leader>wh", "<C-w>s", {desc="Split Window Horizontally"}) -- Split window horizontally
vim.keymap.set("n", "<leader>we", "<C-w>=", {desc="Equalize Window Sizes"}) -- Equalize window sizes
vim.keymap.set("n", "<leader>wx", ":close<CR>", {desc="Close Current Split Window"}) -- Close current split window
vim.keymap.set("n", "<leader><Tab>", "<C-w>w", {desc="Switch to Next Window"}) -- Switch to next window
vim.keymap.set("n", "<leader>h", "<C-w>h", {desc="Move to Left Window"}) -- Move to left window
vim.keymap.set("n", "<leader>j", "<C-w>j", {desc="Move to Bottom Window"}) -- Move to bottom window
vim.keymap.set("n", "<leader>k", "<C-w>k", {desc="Move to Top Window"}) -- Move to top window
vim.keymap.set("n", "<leader>l", "<C-w>l", {desc="Move to Right Window"}) -- Move to right window

-- Tab Management 
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", {desc="New Tab"}) -- New tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", {desc="Close Tab"}) -- Close tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", {desc="Next Tab"}) -- Next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", {desc="Previous Tab"}) -- Previous tab
vim.keymap.set('n', "<leader>tr", ":TabRename ", {desc="Rename Tab"}) -- Rename tab
vim.keymap.set('n', "<leader>tg1", "1gt", {desc="First Tab"}) -- First tab
vim.keymap.set('n', "<leader>tg2", "2gt", {desc="Second Tab"}) -- Second tab
vim.keymap.set('n', "<leader>tg3", "3gt", {desc="Third Tab"}) -- Third tab
vim.keymap.set('n', "<leader>tg4", "4gt", {desc="Fourth Tab"}) -- Fourth tab
vim.keymap.set('n', "<leader>tg5", "5gt", {desc="Fifth Tab"}) -- Fifth tab
vim.keymap.set('n', "<leader>tg6", "6gt", {desc="Sixth Tab"}) -- Sixth tab
vim.keymap.set('n', "<leader>tg7", "7gt", {desc="Seventh Tab"}) -- Seventh tab
vim.keymap.set('n', "<leader>tg8", "8gt", {desc="Eighth Tab"}) -- Eighth tab
vim.keymap.set('n', "<leader>tg9", "9gt", {desc="Ninth Tab"}) -- Ninth tab
vim.keymap.set('n', "<leader>tg0", ":tablast<CR>", {desc="Last Tab"}) -- Last tab

-- File Explorer
vim.keymap.set("n", "<leader>eo", ":NvimTreeToggle<CR>", {desc="Toggle File Explorer"}) -- Toggle file explorer
vim.keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", {desc="Refresh File Explorer"}) -- Refresh file explorer
vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", {desc="Focus File Explorer"}) -- Focus file explorer
vim.keymap.set("n", "<leader>es", ":NvimTreeFindFile<CR>", {desc="Search and Focus in File Explorer"}) -- Search and Focus file in file explorer
vim.keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", {desc="Collapse Folder"}) -- Collapse file explorer

-- Visual Mode
vim.keymap.set("v", "<", "<gv", {desc="Indent Left"}) -- Indent left
vim.keymap.set("v", ">", ">gv", {desc="Indent Right"}) -- Indent right


-- Buffer Management 
-- Already have a buffer menu command on bm using telescope
vim.keymap.set("n", "<leader>bp", ":bp<CR>", {desc="Previous Buffer"}) -- Previous buffer
vim.keymap.set("n", "<leader>bn", ":bn<CR>", {desc="Next Buffer"}) -- Next buffer

-- Marks Management
-- Already have a marks menu command on mm using telescope

-- Miscellaneous 
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv", {desc="Move Line Down"}) -- Move line down
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv", {desc="Move Line Up"}) -- Move line up
vim.keymap.set('n', '<C-d>', '<C-d>zz', {desc="Move Screen Down"}) -- Move screen down while keeping cursor in middle
vim.keymap.set('n', '<C-u>', '<C-u>zz', {desc="Move Screen Up"}) -- Move screen up while keeping cursor in middle
vim.keymap.set('n', '<Esc>', '<Esc>:noh<CR>', {desc="Clear Search Highlighting"}) -- Clear search highlighting
vim.keymap.set('n', '<leader><leader>', ':', {desc="Enter Command Mode"}) -- Enter command mode
vim.keymap.set('n', '<leader><CR>', '@@', {desc="Repeat Last Macro"}) -- Repeat last macro


-- Utility commands
local function get_os()
	return package.config:sub(1,1) == '/' and ":term<CR>" or ":Pwsh<CR>"
end

vim.keymap.set("n", "<leader>uq", ":q<CR>", {desc="Quit"}) -- Quit
vim.keymap.set("n", "<leader>ut", get_os()  , {desc="Open Terminal"}) -- Open terminal/powershell
vim.keymap.set("n", "<leader>uw", ":w<CR>", {desc="Save"}) -- Save
vim.keymap.set("n", "<leader>us", ":w<CR>:source %<CR>", {desc="Save and Source"}) -- Save and source

-- Git Management
vim.keymap.set('n', '<leader>gs', ':Git<CR>', {desc="Git Status"}) -- Git status
vim.keymap.set('n', '<leader>gl', ':Git log --oneline<CR>', {desc="Git Commits"}) -- Git commit history one line
vim.keymap.set('n', '<leader>gf', ':Git fetch<CR>', {desc="Git Fetch"}) -- Git fetch
vim.keymap.set('n', '<leader>gp', ':Git pull<CR>', {desc="Git Pull"}) -- Git pull 
vim.keymap.set('n', '<leader>gaf', ':Git add % <CR>', {desc="Git Add This File"}) -- Git add file
vim.keymap.set('n', '<leader>gau', ':Git add -u<CR>', {desc="Git Add -u"}) -- Git add update
vim.keymap.set('n', '<leader>gaa', ':Git add -A<CR>', {desc="Git Add -A"}) -- Git add all
vim.keymap.set('n', '<leader>gac', ':Git add -u <Bar> Git commit -m ""<Left>', {desc="Git Add -u and Commit"}) -- Git add update and commit

vim.keymap.set('n', '<leader>gc', ':Git commit -m ""<Left>', {desc="Git Commit"}) -- Git commit
vim.keymap.set('n', '<leader>gbl', ':Git branch -l<CR>', {desc="Git Branches"}) -- Git branches


vim.keymap.set('n', '<leader>grp', ':Git push<CR>', {desc="Git Push"}) -- Git push. r added as safety
-- test theory

-- Shortcuts to Memorize
--[[

  -- Movement 
  [[ | begin this or next func 
  <C-e> | move screen down one line.
  <C-y> | move screen up one line
  <C-b> | move screen up a page
  <C-f> | move screen down a page
  <C-d> | move cursor and screen down 1/2 page
  <C-u> | move cursor and screeup up 1/2 page

  -- Diff 
  [c and ]c | prev and nex diff

  -- Buffer
  bp and bn | prev and next buffer

  -- Marks
  `` | Previous location before jump
  `. | go to last change
  `" | last edit

  -- Insert Mode Stuff
  <C-w> | Delete Word b4 cursor
  <C-u> | Delete Line b4 cursor

  -- Command Line Mode
  :g/foo/command | apply a command on all matching lines

  -- Window Management
  <C-w> +-<> | Increase/Decrease window/height width

  -- Registers
  "_ | Blackhole register
  "+ | System Clipboard

  -- Startup
  nvim <filename> +123 | goto line 123


]] --
