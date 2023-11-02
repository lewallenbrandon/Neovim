local mark = require("harpoon.mark")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, {desc="Harpoon File"}) -- Add current file to list
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {desc="Toggle Harpoon Menu"}) -- Toggle quick menu
vim.keymap.set("n", "<C-h>", function () ui.nav_file(1) end, {desc="Harpoon go to file 1"}) -- Navigate to file in position 1
vim.keymap.set("n", "<C-t>", function () ui.nav_file(2) end, {desc="Harpoon go to file 2"}) -- Navigate to file in position 2
vim.keymap.set("n", "<C-n>", function () ui.nav_file(3) end, {desc="Harpoon go to file 3"}) -- Navigate to file in position 3
vim.keymap.set("n", "<C-s>", function () ui.nav_file(4) end, {desc="Harpoon go to file 4"}) -- Navigate to file in position 4
