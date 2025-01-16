return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
        theme = {
            normal = { fg = "#EA83A5" },

            -- these highlights correspond to symbols table from config
            ellipsis = { fg = "#EA83A5" },
            separator = { fg = "#EA83A5" },
            modified = { fg = "#EA83A5" },

            -- these highlights represent the _text_ of three main parts of barbecue
            dirname = { fg = "#EA83A5" },
            basename = { bold = true },
            context = {},
        }
    },



}
