return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    ---@class snacks.picker.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            preset = {
                -- Defaults to a picker that supports `fzf-lua`, `telescope.nvim` and `mini.pick`
                ---@type fun(cmd:string, opts:table)|nil
                pick = nil,
                -- Used by the `keys` section to show keymaps.
                -- Set your custom keymaps here.
                -- When using a function, the `items` argument are the default keymaps.
                ---@type snacks.dashboard.Item[]
                keys = {
                    { icon = " ", key = "b", desc = "Find File", action = ":lua Snacks.picker.files()",},
                    { icon = " ", key = "d", desc = "Directory", action = ":Oil",},
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "r", desc = "Find Text", action = ":lua Snacks.picker.grep()" },
                    { icon = " ", key = "o", desc = "Recent Files", action = ":lua Snacks.picker.recent()" },
                    { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
                header = [[
                ...............................................................................
                .██████...██████....................█████.......███............................
                .░██████.██████....................░░███.......░░░.............................
                .░███░█████░███...██████....██████..░███████...████..████████....██████........
                .░███░░███.░███..░░░░░███..███░░███.░███░░███.░░███.░░███░░███..███░░███.......
                .░███.░░░..░███...███████.░███.░░░..░███.░███..░███..░███.░███.░███████........
                .░███......░███..███░░███.░███..███.░███.░███..░███..░███.░███.░███░░░.........
                .█████.....█████░░████████░░██████..████.█████.█████.████.█████░░██████........
                .░░░░.....░░░░░..░░░░░░░░..░░░░░░..░░░░.░░░░░.░░░░░.░░░░.░░░░░..░░░░░░.........
                .█████................................................███......................
                .░███................................................░░░.......................
                .░███.........██████...██████...████████..████████...████..████████....███████.
                .░███........███░░███.░░░░░███.░░███░░███░░███░░███.░░███.░░███░░███..███░░███.
                .░███.......░███████...███████..░███.░░░..░███.░███..░███..░███.░███.░███.░███.
                .░███......█░███░░░...███░░███..░███......░███.░███..░███..░███.░███.░███.░███.
                .███████████░░██████.░░████████.█████.....████.█████.█████.████.█████░░███████.
                .░░░░░░░░░░..░░░░░░...░░░░░░░░.░░░░░.....░░░░.░░░░░.░░░░░.░░░░.░░░░░..░░░░░███.
                ......................................................................███.░███.
                ......................................................................░░██████.
                ........................................................................░░░░░░.]],
            },
            sections = {
                { section = "header", gap = 1, padding = 1},
                { icon="", section = "keys", title = "Keymaps", indent = 12, gap = 1, padding = 1 },
                { icon = " ", title = "Projects", section = "projects", indent = 12, padding = 1 },
                {
                    icon = " ",
                    title = "Git Status",
                    section = "terminal",
                    enabled = function()
                        return Snacks.git.get_root() ~= nil
                    end,
                    cmd = "git status --short --branch --renames",
                    height = 5,
                    padding = 1,
                    ttl = 5 * 60,
                    indent = 12,
                },
            },




        },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        picker = {enabled=true},
        scroll = { enabled = true },
        scope = {enabled = true},
        statuscolumn = { enabled = true },
        words = { enabled = true },

    },
}
