--vim.opt.relativenumber = true
vim.opt.nu = true

vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.mouse = "a"
--vim.opt.cmdheight = 0

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.showmode = false
vim.colorscheme = "default"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true
--vim.api.nvim_set_hl(0,'WhichKey', {bg='#0d0e1d', fg='#ff9375'})
--vim.api.nvim_set_hl(0,'WhichKeyBorder', {bg='#0d0e1d', fg='#ff9375'})
--vim.api.nvim_set_hl(0,'WhichKeyDesc', {bg='#0d0e1d', fg='#ff9375'})
--vim.api.nvim_set_hl(0,'WhichKeyGroup', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIcon', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconAzure', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconBlue', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconCyan', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconGreen', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconGrey', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconOrange', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconPurple', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconRed', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyIconYellow', {bg='#0d0e1d', fg='#ff9375'})

vim.api.nvim_set_hl(0,'WhichKeyNormal', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeySeparator', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyTitle', {bg='#0d0e1d', fg='#ff9375'})
vim.api.nvim_set_hl(0,'WhichKeyValue', {bg='#0d0e1d', fg='#ff9375'})
