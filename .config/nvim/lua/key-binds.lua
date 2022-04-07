-- use space key as leader — first ensure it isn't mapped elsewhere first
vim.api.nvim_set_keymap('n', '<Space>', '<nop>',  {noremap = true, silent = true })
vim.g.mapleader = ' '

-- require 'config-lsp/key-binds'
-- require 'config-cmp/key-binds'
-- require 'config-treesitter/key-binds'
require 'config-harpoon/key-binds'
-- require 'config-trouble/key-binds'
require 'config-telescope/key-binds'
