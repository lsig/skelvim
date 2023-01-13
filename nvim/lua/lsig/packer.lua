vim.cmd([[packadd packer.nvim]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  -- colorscheme 
  use("folke/tokyonight.nvim")
  --Lsp
  use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
  use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})
  use("onsails/lspkind.nvim")
  --treesitter
  use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
  --file explorer
  use("nvim-tree/nvim-tree.lua")
  -- Autocomplete
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("L3MON4D3/LuaSnip")
  use({
	"windwp/nvim-autopairs",
	 config = function()
		require("nvim-autopairs").setup({})
	 end,
	})
  --Telescope
  use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  --Miscallenous
  use("tpope/vim-commentary")
end)
