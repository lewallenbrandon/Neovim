local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}, {desc="Find files"}) -- Find files
vim.keymap.set('n', '<C-p>', builtin.git_files, {}, {desc="Git files"}) -- Git files
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({search = vim.fn.input("Grep > ")}, {desc="Grep string"});
end) -- Grep string

vim.keymap.set('n', '<leader>ws', builtin.treesitter, {}, {desc="Treesitter"}) -- Treesitter
-- vim.keymap.set('n', 'gr', builtin.lsp_references, {}, {desc="LSP References"}) -- LSP References
