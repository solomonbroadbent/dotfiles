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
	use 'https://github.com/neovim/nvim-lspconfig'
	use { 'williamboman/nvim-lsp-installer', config = function() require 'config-lsp' end }
	use { 'lukas-reineke/indent-blankline.nvim', config = function() require 'config-indent-blankline' end}

	-- fuzzy finder
	use {
	    'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} },
	    config = function() require 'config-telescope' end,
	}
	use {
	    'nvim-telescope/telescope-fzf-native.nvim',
	    run = 'make',
	} -- improves speed etc supposedly

	-- harpoon
	use {
	  'ThePrimeagen/harpoon',
	  requires = { {'nvim-lua/plenary.nvim'} },
	}

	-- themes
	use 'mhartington/oceanic-next'
	use 'kristijanhusak/vim-hybrid-material'
	use { 'kaicataldo/material.vim', branch = 'main' }

	-- status bar
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	-- icons
	use 'ryanoasis/vim-devicons' -- apparently should be loaded last
end,
config = config
})
