return {
    --{"rebelot/kanagawa.nvim",
    --    config = function()
    --        vim.cmd.colorscheme "kanagawa"
    --    end,
    --},
    {
        "dgox16/oldworld.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "oldworld"
        end,
    },
    --{ "catppuccin/nvim",
    --    name = "catppuccin",
    --    priority = 1000,
    --    config = function()
    --        require("catppuccin").setup({
    --            flavour = "mocha", -- latte, frappe, macchiato, mocha
    --            background = { -- :h background
    --                light = "latte",
    --                dark = "mocha",
    --            },
    --            transparent_background = false, -- disables setting the background color.
    --            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    --            term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    --            dim_inactive = {
    --                enabled = false, -- dims the background color of inactive window
    --                shade = "dark",
    --                percentage = 0.15, -- percentage of the shade to apply to the inactive window
    --            },
    --            no_italic = false, -- Force no italic
    --            no_bold = false, -- Force no bold
    --            no_underline = false, -- Force no underline
    --            color_overrides = {},
    --            custom_highlights = {},
    --            default_integrations = true,
    --            integrations = {
    --                cmp = true,
    --                gitsigns = true,
    --                nvimtree = true,
    --                treesitter = true,
    --                notify = false,
    --                mini = {
    --                    enabled = true,
    --                    indentscope_color = "",
    --                },
    --                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    --            },
    --        })

    --        -- setup must be called before loading
    --        vim.cmd.colorscheme "catppuccin"
    --    end},
    { "MunifTanjim/nui.nvim", lazy = true },
    -- Better `vim.notify()`
    {
        "rcarriga/nvim-notify",
        lazy = true,
        keys = {
            {
                "<leader>un",
                function()
                    require("notify").dismiss({ silent = true, pending = true })
                end,
                desc = "Clear notifications",
            },
        },
        opts = { timeout = 3000 },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        enabled = false,
        opts = {
            lsp = {
                progress = {
                    enabled = false,
                },
                override = {
                    -- override the default lsp markdown formatter with Noice
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    -- override the lsp markdown formatter with Noice
                    ["vim.lsp.util.stylize_markdown"] = true,
                    -- override cmp documentation with Noice (needs the other options to work)
                    ["cmp.entry.get_documentation"] = true,
                },
                --NOTE: install parsers for markdown and markdown_inline to see markdown documentation
                hover = {
                    enabled = true,
                },
                signature = {
                    enabled = false,
                },
                message = {
                    enabled = true, -- Messages shown by lsp servers
                },
            },
            health = {
                checker = false, -- Disable if you don't want health checks to run
            },
            presets = {
                -- you can enable a preset by setting it to true, or a table that will override the preset config
                -- you can also add custom presets that you can enable/disable with enabled=true
                bottom_search = true, -- use a classic bottom cmdline for search
                command_palette = false, -- position the cmdline and popupmenu together
                long_message_to_split = false, -- long messages will be sent to a split
                inc_rename = false, -- enables an input dialog for inc-rename.nvim
                lsp_doc_border = false, -- add a border to hover docs and signature help
            },
        },
    }
}


