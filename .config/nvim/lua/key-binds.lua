-- use space key as leader — first ensure it isn't mapped elsewhere first
vim.api.nvim_set_keymap('n', '<Space>', '<nop>',  {noremap = true, silent = true })
vim.g.mapleader = ' '

-- some general keybinds
local which_key = require 'which-key'

which_key.register({
	z = { 'zMzvzz', 'focus the current line by folding all else' }
}, { prefix = '<leader>' })
-- focus the current fold
vim.cmd [[
	nnoremap <leader>z 
]]

-- note that there are some buffer specific keybinds for config-lsp in config-lsp/init.lua.
-- 	these binds get applied to each lsp server in config-lsp/init.lua
require 'config-lsp/key-binds'.unset_general_key_binds()
-- require 'config-cmp/key-binds'
require 'config-treesitter/key-binds'.setup_key_bind_prompts()
require 'config-harpoon/key-binds'
require 'config-trouble/key-binds'
require 'config-telescope/key-binds'
