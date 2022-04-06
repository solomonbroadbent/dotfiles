vim.cmd [[packadd packer.nvim]] -- installed packer as an optional plugin so need to tell nvim to load it

local config = {
	profile = {
    		enable = true,
    		threshold = 0 -- measure every plugin no matter how fast
  	},
	display = {
    		open_fn = function()
      			return require('packer.util').float({ border = 'single' })
    		end
  	}
}

return require('packer').startup({function()
	use 'wbthomason/packer.nvim' -- manager packer with packer

	-- lsp etc
	use 'neovim/nvim-lspconfig'
	use { 'williamboman/nvim-lsp-installer', config = function() require 'config-lsp' end }

	-- lsp completion. not entirely sure why i need this 😕
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	-- use null-ls

	-- snippets — it's required by nvim-cmp to have one
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ' -- i think needed to integrate with native neovim lsp
	-- use 'rafamadriz/friendly-snippets' -- a bunch of usefull snippets

	-- telescope fuzzy finder + extensions
	use {
	    'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} },
	    config = function() require 'config-telescope' end,
	}
	use {
	    'nvim-telescope/telescope-fzf-native.nvim',
	    run = 'make',
	} -- improves speed by factor 10 + more supposedly

	-- harpoon
	use {
	  'ThePrimeagen/harpoon',
	  requires = { {'nvim-lua/plenary.nvim'} },
	  config = function() require 'config-harpoon' end,
	}

	-- typical autopairs, surround/sandwich etc plugins
	use {
	  'windwp/nvim-autopairs',
	  config = function() require 'config-autopairs' end,
	}
	use 'machakann/vim-sandwich'

	-- themes
	use 'kristijanhusak/vim-hybrid-material'
	use { 'kaicataldo/material.vim', branch = 'main' }

	-- status bar
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	-- indent guides
	use { 'lukas-reineke/indent-blankline.nvim', config = function() require 'config-indent-blankline' end }

	-- icons
	use 'ryanoasis/vim-devicons' -- apparently should be loaded last
end,
config = config
})
