local mark = require("harpoon.mark")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>Hf", mark.add_file, {desc="Harpoon File"}) -- Add current file to list
vim.keymap.set("n", "<leader>Hm", ui.toggle_quick_menu, {desc="Toggle Harpoon Menu"}) -- Toggle quick menu
vim.keymap.set("n", "<leader>H1", function () ui.nav_file(1) end, {desc="Harpoon go to file 1"}) -- Navigate to file in position 1
vim.keymap.set("n", "<leader>H2", function () ui.nav_file(2) end, {desc="Harpoon go to file 2"}) -- Navigate to file in position 2
vim.keymap.set("n", "<leader>H3", function () ui.nav_file(3) end, {desc="Harpoon go to file 3"}) -- Navigate to file in position 3
vim.keymap.set("n", "<leader>H3", function () ui.nav_file(4) end, {desc="Harpoon go to file 4"}) -- Navigate to file in position 4
