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

return require('packer').startup({function(use)
	use 'wbthomason/packer.nvim' -- manager packer with packer

	-- lsp etc
	use 'neovim/nvim-lspconfig'
	use {
	  'williamboman/nvim-lsp-installer',
	  config = function() require 'config-lsp' end,
	}
	-- use null-ls

	-- lsp completion. not entirely sure why i need this 😕
	use {
	  'hrsh7th/nvim-cmp',
	  config = function() require 'config-nvim-cmp' end,
	}
	use 'hrsh7th/cmp-nvim-lsp' -- needed ...
	use 'hrsh7th/cmp-buffer' -- trigger autocomplete as typing
	use 'hrsh7th/cmp-path' -- nvim-cmp source for filesystem paths
	use {
	  'hrsh7th/cmp-cmdline', -- nvim-cmp source for neovim's commandline
	  config = function() require 'config-cmp-cmdline' end,
	}

	-- snippets — it's required by nvim-cmp to have one
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ' -- i think needed to integrate with native neovim lsp
	-- use 'rafamadriz/friendly-snippets' -- a bunch of usefull snippets

	-- treesitter — gives better syntax hightlighting and can do actions like `daf` (delete around function)
	use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate',
	}
	require 'config-treesitter' -- need to configure treesitter -after- it's imported

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

	-- trouble — warnings, errors, quickfix list etc
	use {
	  'folke/trouble.nvim',
	  config = function() require 'config-trouble' end,
	}

	-- themes
	use 'kristijanhusak/vim-hybrid-material'
	use { 'kaicataldo/material.vim', branch = 'main' }

	-- status bar
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	-- indent guides
	use {
	  'lukas-reineke/indent-blankline.nvim',
	  config = function() require 'config-indent-blankline' end,
	}

	-- cursor animations
	use {
	  'edluffy/specs.nvim',
	  config = function() require 'config-specs' end,
	}

	-- use nvim in the browser
	use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end,
		config = function() require 'config-firenvim' end,
	}

	-- icons
	use 'ryanoasis/vim-devicons' -- apparently should be loaded last
end,
config = config
})
