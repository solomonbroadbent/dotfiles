-- use space key as leader — first ensure it isn't mapped elsewhere first
vim.api.nvim_set_keymap('n', '<Space>', '<nop>',  {noremap = true, silent = true })
vim.g.mapleader = ' '

-- note that there are some buffer specific keybinds for config-lsp in config-lsp/init.lua.
-- 	these binds get applied to each lsp server in config-lsp/init.lua
require 'config-lsp/key-binds'.unset_general_key_binds()
-- require 'config-cmp/key-binds'
-- require 'config-treesitter/key-binds'
require 'config-harpoon/key-binds'
require 'config-trouble/key-binds'
require 'config-telescope/key-binds'
