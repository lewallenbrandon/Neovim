return
    {

        { "nvim-lua/plenary.nvim", lazy = true },
        {
            {
                'williamboman/mason.nvim',
                lazy = false,
                opts = {},
            },

            -- Autocompletion
            {
                'hrsh7th/nvim-cmp',
                event = 'InsertEnter',
                config = function()
                    local cmp = require('cmp')

                    cmp.setup({
                        sources = {
                            {name = 'nvim_lsp'},
                        },
                        mapping = cmp.mapping.preset.insert({
                            ['<C-Space>'] = cmp.mapping.complete(),
                            ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                            ['<C-d>'] = cmp.mapping.scroll_docs(4),
                            ["<CR>"] = cmp.mapping.confirm({
                                select = false,
                            }),
                            ["<Tab>"] = cmp.mapping(function(fallback)
                                if cmp.visible() then
                                    cmp.select_next_item()
                                else
                                    fallback()
                                end
                            end, { "i", "s" }),
                            ["<S-Tab>"] = cmp.mapping(function(fallback)
                                if cmp.visible() then
                                    cmp.select_prev_item()
                                else
                                    fallback()
                                end
                            end, { "i", "s" }),
                        }),
                        snippet = {
                            expand = function(args)
                                vim.snippet.expand(args.body)
                            end,
                        },
                    })
                end
            },

            -- LSP
            {
                'neovim/nvim-lspconfig',
                cmd = {'LspInfo', 'LspInstall', 'LspStart'},
                event = {'BufReadPre', 'BufNewFile'},
                dependencies = {
                    {'hrsh7th/cmp-nvim-lsp'},
                    {'williamboman/mason.nvim'},
                    {'williamboman/mason-lspconfig.nvim'},
                },
                init = function()
                    -- Reserve a space in the gutter
                    -- This will avoid an annoying layout shift in the screen
                    vim.opt.signcolumn = 'yes'
                end,
                config = function()
                    local lsp_defaults = require('lspconfig').util.default_config

                    -- Add cmp_nvim_lsp capabilities settings to lspconfig
                    -- This should be executed before you configure any language server
                    lsp_defaults.capabilities = vim.tbl_deep_extend(
                        'force',
                        lsp_defaults.capabilities,
                        require('cmp_nvim_lsp').default_capabilities()
                    )

                    -- LspAttach is where you enable features that only work
                    -- if there is a language server active in the file
                    vim.api.nvim_create_autocmd('LspAttach', {
                        desc = 'LSP actions',
                        callback = function(event)
                            local opts = {buffer = event.buf}

                            vim.keymap.set('n', '<C-h>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
                            vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
                            vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
                            vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
                            vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
                            vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
                            vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
                            vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
                            vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
                            vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
                        end,
                    })

                    require('mason-lspconfig').setup({
                        ensure_installed = {},
                        handlers = {
                            -- this first function is the "default handler"
                            -- it applies to every language server without a "custom handler"
                            function(server_name)
                                require('lspconfig')[server_name].setup({})
                            end,
                        }
                    })
                end
            }
        },
        {
            -- NOTE: Yes, you can install new plugins here!
            'mfussenegger/nvim-dap',
            -- NOTE: And you can specify dependencies as well
            dependencies = {
                -- Creates a beautiful debugger UI
                'rcarriga/nvim-dap-ui',

                -- Required dependency for nvim-dap-ui
                'nvim-neotest/nvim-nio',

                -- Installs the debug adapters for you
                'williamboman/mason.nvim',
                'jay-babu/mason-nvim-dap.nvim',
                "mfussenegger/nvim-dap-python",

                -- Add your own debuggers here
                'leoluz/nvim-dap-go',
            },
            keys = {
                -- Basic debugging keymaps, feel free to change to your liking!
                {
                    '<F5>',
                    function()
                        require('dap').continue()
                    end,
                    desc = 'Debug: Start/Continue',
                },
                {
                    '<F11>',
                    function()
                        require('dap').step_into()
                    end,
                    desc = 'Debug: Step Into',
                },
                {
                    '<F10>',
                    function()
                        require('dap').step_over()
                    end,
                    desc = 'Debug: Step Over',
                },
                {
                    '<Shift-F11>',
                    function()
                        require('dap').step_out()
                    end,
                    desc = 'Debug: Step Out',
                },
                {
                    '<F9>',
                    function()
                        require('dap').toggle_breakpoint()
                    end,
                    desc = 'Debug: Toggle Breakpoint',
                },
                {
                    '<Shift-F9>',
                    function()
                        require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
                    end,
                    desc = 'Debug: Set Breakpoint',
                },
                -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
                {
                    '<F7>',
                    function()
                        require('dapui').toggle()
                    end,
                    desc = 'Debug: See last session result.',
                },
            },
            config = function()
                local dap = require 'dap'
                local dapui = require 'dapui'

                require('mason-nvim-dap').setup {
                    -- Makes a best effort to setup the various debuggers with
                    -- reasonable debug configurations
                    automatic_installation = true,

                    -- You can provide additional configuration to the handlers,
                    -- see mason-nvim-dap README for more information
                    handlers = {},

                    -- You'll need to check that you have the required things installed
                    -- online, please don't ask me how to install them :)
                    ensure_installed = {
                        -- Update this to ensure that you have the debuggers for the langs you want
                        'delve',
                        'debugpy'
                    },
                }

                -- Dap UI setup
                -- For more information, see |:help nvim-dap-ui|
                dapui.setup {
                    -- Set icons to characters that are more likely to work in every terminal.
                    --    Feel free to remove or use ones that you like more! :)
                    --    Don't feel like these are good choices.
                    icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
                    controls = {
                        icons = {
                            pause = '⏸',
                            play = '▶',
                            step_into = '⏎',
                            step_over = '⏭',
                            step_out = '⏮',
                            step_back = 'b',
                            run_last = '▶▶',
                            terminate = '⏹',
                            disconnect = '⏏',
                        },
                    },
                }

                -- Change breakpoint icons
                -- vim.api.nvim_set_hl(0, 'DapBreak', { fg = '#e51400' })
                -- vim.api.nvim_set_hl(0, 'DapStop', { fg = '#ffcc00' })
                -- local breakpoint_icons = vim.g.have_nerd_font
                --     and { Breakpoint = '', BreakpointCondition = '', BreakpointRejected = '', LogPoint = '', Stopped = '' }
                --   or { Breakpoint = '●', BreakpointCondition = '⊜', BreakpointRejected = '⊘', LogPoint = '◆', Stopped = '⭔' }
                -- for type, icon in pairs(breakpoint_icons) do
                --   local tp = 'Dap' .. type
                --   local hl = (type == 'Stopped') and 'DapStop' or 'DapBreak'
                --   vim.fn.sign_define(tp, { text = icon, texthl = hl, numhl = hl })
                -- end

                dap.listeners.after.event_initialized['dapui_config'] = dapui.open
                dap.listeners.before.event_terminated['dapui_config'] = dapui.close
                dap.listeners.before.event_exited['dapui_config'] = dapui.close

                --                if vim.fn.has("win32") == 1 then
                --                    require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/Scripts/pythonw.exe"))
                --                else
                --                    require("dap-python").setup(LazyVim.get_pkg_path("debugpy", "/venv/bin/python"))
                --                end
                --
                dap.configurations.python = {
                    {
                        -- The first three options are required by nvim-dap
                        type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
                        request = 'launch';
                        name = "Launch file";

                        -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

                        program = "${file}"; -- This configuration will launch the current file if used.
                        pythonPath = function()
                            -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
                            -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
                            -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
                            local cwd = vim.fn.getcwd()
                            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                                return cwd .. '/venv/bin/python'
                            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                                return cwd .. '/.venv/bin/python'
                            else
                                return '/opt/homebrew/Caskroom/miniforge/base/bin/python'
                            end
                        end;
                    },
                }


                -- Install golang specific config
                require('dap-go').setup {
                    delve = {
                        -- On Windows delve must be run attached or it crashes.
                        -- See https://github.com/leoluz/nvim-dap-go/blob/main/README.md#configuring
                        detached = vim.fn.has 'win32' == 0,
                    },
                }
                dap.adapters.lldb = {
                    type = "executable",
                    command = "/usr/bin/lldb-vscode", -- adjust as needed, must be absolute path
                    name = "lldb",
                }

                dap.adapters.gdb = {
                    type = "executable",
                    command = "gdb",
                    args = { "-i", "dap" },
                }

                dap.configurations.cpp = {
                    {
                        name = "Launch",
                        type = "lldb",
                        request = "launch",
                        program = function()
                            return vim.fn.input(
                                "Path to executable: ",
                                vim.fn.getcwd() .. "/",
                                "file"
                            )
                        end,
                        cwd = "${workspaceFolder}",
                        stopOnEntry = false,
                        args = {},
                    },
                    {
                        -- If you get an "Operation not permitted" error using this, try disabling YAMA:
                        --  echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
                        name = "Attach to process",
                        type = "cpp", -- Adjust this to match your adapter name (`dap.adapters.<name>`)
                        request = "attach",
                        pid = require("dap.utils").pick_process,
                        args = {},
                    },
                }

                dap.configurations.c = dap.configurations.cpp
                dap.configurations.zig = {
                    {
                        name = "Launch",
                        type = "gdb",
                        request = "launch",
                        program = function()
                            return vim.fn.input(
                                "Path to executable: ",
                                vim.fn.getcwd() .. "/zig-out/bin/",
                                "file"
                            )
                        end,
                        cwd = "${workspaceFolder}",
                        console = "integratedTerminal",
                    },
                }
            end,
        }
    }
