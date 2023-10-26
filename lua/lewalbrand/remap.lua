vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- equalize window sizes
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader><Tab>", "<C-w>w") -- switch to next window
vim.keymap.set("n", "<leader>h", "<C-w>h") -- move to left window
vim.keymap.set("n", "<leader>j", "<C-w>j") -- move to bottom window
vim.keymap.set("n", "<leader>k", "<C-w>k") -- move to top window
vim.keymap.set("n", "<leader>l", "<C-w>l") -- move to right window

-- Tab Management 
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- File Explorer
vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>") -- toggle file explorer

-- Visual Mode
vim.keymap.set("v", "<", "<gv") -- indent left
vim.keymap.set("v", ">", ">gv") -- indent right

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
