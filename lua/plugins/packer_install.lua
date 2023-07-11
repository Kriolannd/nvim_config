-- Добавляем Packer как пакет в Neovim
vim.cmd [[packadd packer.nvim]]

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Используем данный коллбэк как список для плагинов
return require('packer').startup(function()

	-- Добавляем Packer в список, чтобы он обновлял сам себя
	use 'wbthomason/packer.nvim'

	-- LSP сервер
	use 'neovim/nvim-lspconfig'

	use 'nvim-tree/nvim-web-devicons'

	use 'nvim-lua/plenary.nvim'

	use 'mfussenegger/nvim-jdtls'

	use {
		'nvim-tree/nvim-tree.lua',
		config = function()
			require('plugins/nvim-tree')
		end
	}

	-- Иконки для автодополнения
	use {
		'onsails/lspkind-nvim',
		config = function()
			require('plugins/lspkind')
		end
	}

	-- Инсталлер для сервера LSP
	use {
		'williamboman/nvim-lsp-installer',
		config = function()
			require('plugins/lsp-installer')
		end
	}

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	
	-- Удобное меню для обозрения проблем LSP
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {}
		end,
	}

	-- Автодополнение
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-nvim-lua'
		},
		config = function()
			require('plugins/cmp')
		end
	}

	use "savq/melange-nvim"

	use 'arkav/lualine-lsp-progress'

	use {
		"nvim-lualine/lualine.nvim",
		event = "BufEnter",
		config = function()
   			require("plugins/lualine").setup()
  		end,
		requires = { "nvim-web-devicons" },
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
		config = function()
			require("plugins/treesitter")
		end,
	}

	use {
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("plugins/null-ls")
		end,
		requires = { "nvim-lua/plenary.nvim" },
	}

	use {
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins/gitsigns")
		end,
	}

	use {
		"windwp/nvim-autopairs",
		config = function()
			require("plugins/autopairs")
		end,
	}

	use {
    	"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",
	}
end)
