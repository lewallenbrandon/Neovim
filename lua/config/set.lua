vim.opt.relativenumber = true
vim.opt.nu = true

vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.mouse = "a"
vim.opt.cmdheight = 0

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.showmode = false
vim.colorscheme = "default"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true
