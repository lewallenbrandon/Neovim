local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc="Find files"}) -- Find files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {desc="Git files"}) -- Git files
vim.keymap.set('n', '<leader>fs', function() builtin.grep_string({search = vim.fn.input("Grep > ")}) end, {desc="Grep string"}) -- Grep string
vim.keymap.set('n', '<leader>fv', builtin.treesitter, {desc="Treesitter Variables"}) -- Treesitter
-- vim.keymap.set('n', 'gr', builtin.lsp_references, {}, {desc="LSP References"}) -- LSP References
vim.keymap.set('n', '<leader>bm', builtin.buffers, {desc="Buffers"}) -- Buffers
vim.keymap.set('n', '<leader>mm', builtin.marks, {desc="Marks"}) -- Marks

-- Utility Commands for finding info or doing more advanced stuff
vim.keymap.set('n', '<leader>uh', builtin.help_tags, {desc="Help Tags"}) -- Help Tags
vim.keymap.set('n', '<leader>uc', builtin.command_history, {desc="Command History"}) -- Commands
vim.keymap.set('n', '<leader>us', builtin.search_history, {desc="Search History"}) -- Search History


-- Git Management
vim.keymap.set('n', '<leader>gs', builtin.git_status, {desc="Git Status"}) -- Git Status
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {desc="Git Commits"}) -- Git Commits
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {desc="Git Branches"}) -- Git Branches

