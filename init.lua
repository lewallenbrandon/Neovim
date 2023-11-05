require("config.set")
require("config.lazy")
require("config.command")

vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        require("config.autocmds")
        require("config.remap")
    end,
})
