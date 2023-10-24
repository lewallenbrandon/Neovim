vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- equalize window sizes
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- Tab Management 
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- File Explorer
vim.keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>") -- toggle file explorer
