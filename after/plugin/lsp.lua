local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "<leader>pgd", function() vim.lsp.buf.definition() end, opts, {desc="Go to definition"}) -- Go to definition
  vim.keymap.set("n", "<leader>pgr", function() vim.lsp.buf.references() end, opts, {desc="Go to references"}) -- Go to references
  vim.keymap.set("n", "<leader>pgn", function() vim.lsp.buf.declaration() end, opts, {desc="Go to Initalization"})
  vim.keymap.set("n", "<leader>ph", function() vim.lsp.buf.hover() end, opts, {desc="Hover"}) -- Hover
  vim.keymap.set("n", "<leader>prf", function() vim.lsp.buf.format() end, opts, {desc="Format"}) -- FormatFormat
  vim.keymap.set("n", "<leader>prc", function() vim.lsp.buf.code_action() end, opts, {desc="Code Actions"}) -- Format
  vim.keymap.set("n", "<leader>pgi", function() vim.lsp.buf.implementation() end, opts, {desc="Go to Implementation"})
  vim.keymap.set("n", "<leader>prr", function() vim.lsp.buf.rename() end, opts, {desc="Rename"})
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts, {desc="Signature help"}) -- Signature help
  vim.keymap.set("n", "<leader>qn", function() vim.diagnostic.goto_next() end, opts, {desc="Next diagnostic"}) -- Next diagnostic
  vim.keymap.set("n", "<leader>qp", function() vim.diagnostic.goto_prev() end, opts, {desc="Previous diagnostic "}) -- Previous diagnostic 
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'tsserver', 'rust_analyzer', 'pyright', 'lua_ls'},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
  },
  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
})
