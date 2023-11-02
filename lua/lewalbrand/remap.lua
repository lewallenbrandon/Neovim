vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", {desc="Split Window Vertically"}) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", {desc="Split Window Horizontally"}) -- Split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", {desc="Equalize Window Sizes"}) -- Equalize window sizes
vim.keymap.set("n", "<leader>sx", ":close<CR>", {desc="Close Current Split Window"}) -- Close current split window
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

-- File Explorer
vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>", {desc="Toggle File Explorer"}) -- Toggle file explorer

-- Visual Mode
vim.keymap.set("v", "<", "<gv", {desc="Indent Left"}) -- Indent left
vim.keymap.set("v", ">", ">gv", {desc="Indent Right"}) -- Indent right



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
