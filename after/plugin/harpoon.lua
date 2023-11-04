local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>Hf", mark.add_file, {desc="Harpoon File"}) -- Add current file to list
vim.keymap.set("n", "<leader>Hm", ui.toggle_quick_menu, {desc="Toggle Harpoon Menu"}) -- Toggle quick menu
vim.keymap.set("n", "<leader>Hg1", function () ui.nav_file(1) end, {desc="Harpoon 1"}) -- Navigate to file in position 1
vim.keymap.set("n", "<leader>Hg2", function () ui.nav_file(2) end, {desc="Harpoon 2"}) -- Navigate to file in position 2
vim.keymap.set("n", "<leader>Hg3", function () ui.nav_file(3) end, {desc="Harpoon 3"}) -- Navigate to file in position 3
vim.keymap.set("n", "<leader>Hg4", function () ui.nav_file(4) end, {desc="Harpoon 4"}) -- Navigate to file in position 4
