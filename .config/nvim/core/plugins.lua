return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'navarasu/onedark.nvim'

    -- LSP
    use 'neovim/nvim-lspconfig'

	use 'simrat39/rust-tools.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'

	use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	-- Debugging
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-dap'

	-- Terminal
	use "kassio/neoterm"

    -- Autocompletion
	use("hrsh7th/nvim-cmp")
	use({
		-- cmp LSP completion
		"hrsh7th/cmp-nvim-lsp",
		-- cmp Snippet completion
		"hrsh7th/cmp-vsnip",
		-- cmp Path completion
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-buffer",
		after = { "hrsh7th/nvim-cmp" },
		requires = { "hrsh7th/nvim-cmp" },
	})
	-- Git
	use 'airblade/vim-gitgutter'
	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

    -- Debugging
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons", config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
end)
