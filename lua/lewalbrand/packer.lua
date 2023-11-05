-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use('wbthomason/packer.nvim')
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('github/copilot.vim')
	use('mfussenegger/nvim-dap')
	use('rktjmp/lush.nvim')
	use('mfussenegger/nvim-dap-python')
	use("christoomey/vim-tmux-navigator")
	use('theprimeagen/harpoon')
	use('chentoast/marks.nvim')
	use('gennaro-tedesco/nvim-peekup')
	use('tpope/vim-fugitive')
	use('lewis6991/gitsigns.nvim')
	use('nanozuki/tabby.nvim')
	-- Plugins requiring options
	--
	use({
		'ggandor/leap.nvim',
		config = function()
			require('leap').add_default_mappings()
	end,
	})
	use( {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
	})

	-- Lua
	use ({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 10

		end,
	})
	use({
		'folke/trouble.nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
	})

	use({
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	})

	-- colorscheme
	--[[
	use({
		'projekt0n/github-nvim-theme',
		config = function()
			require('github-theme').setup({
				-- ...
			})

			vim.cmd('colorscheme github_dark_dimmed')
		end
	})
	--]]
	--[[
	use({"catppuccin/nvim", as = "catppuccin", 
	config = function()
		vim.cmd('colorscheme catppuccin-mocha')
		vim.cmd('highlight Normal guibg=none ctermbg=none')
		vim.cmd('highlight NonText guibg=none ctermbg=none')
	end
	})
	--]]


	
	--[[
	use({'navarasu/onedark.nvim', 
	priority = 1000,
	config = function()
		require('onedark').setup {
			style = 'cool'
		}
		require('onedark').load()
		vim.cmd('colorscheme onedark')
	end
	})
	--]]
	
	use({
		"kyazdani42/blue-moon",
		config = function()
			vim.opt.termguicolors = true
			vim.cmd "colorscheme blue-moon"
		end
	})


	use({
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	})

	use({
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	})

	use({
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	})
end)

