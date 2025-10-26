vim.lsp.config('luals', {
    cmd = {'lua-language-server'},
    filetypes = {'lua'},
    root_markers = {'.luarc.json', '.luarc.jsonc'},
})

vim.lsp.enable('luals')

vim.lsp.config('pyright', {
    -- https://github.com/neovim/nvim-lspconfig/blob/master/lsp/pyright.lua

    cmd = {
        "pyright-langserver",
        "--stdio",
    },
    filetypes = {
        "python",
    },
    root_markers = {
        ".git",
        "Pipfile",
        "pyproject.toml",
        "pyrightconfig.json",
        "requirements.txt",
        "setup.cfg",
        "setup.py",
    },
    -- https://microsoft.github.io/pyright/#/settings?id=pyright-settings
    settings = {
        pyright = {
            strict = true,
        },
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
            },
        },
    },

    single_file_support = true,

})

vim.lsp.enable('pyright')


vim.lsp.enable('copilot')

