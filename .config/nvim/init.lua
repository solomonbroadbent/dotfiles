-- make neovim use the ~/.vimrc
-- set runtimepath^=~/.vim runtimepath+=~/.vim/after
-- let &packpath=&runtimepath
-- source ~/.vimrc

require 'config/plugins'
require 'config/plugins/key-binds'

vim.opt.termguicolors = true -- use colors

-- themes here
require 'config/themes/material/kaicataldo'
-- require 'config/themes/material/kristijanhusak'

-- things for https://github.com/ryanoasis/vim-devicons
vim.g.encoding = 'UTF-8'
vim.g.airline_powerline_fonts = 1
vim.g.guifont = 'Fira_Code:h14'

-- vim.o.nocompatible = true -- TODO: disable vi compatibility. apparently it can cause issues
vim.o.scrolloff = 10 -- keep lines showing as scroll
vim.opt.incsearch = true -- highlight characters as searching
vim.o.laststatus = 3 -- global statusbar — don't repeat statusbar in every window

require 'config/tweaks/wrapping'
require 'config/tweaks/highlight-cursor-line'
require 'config/tweaks/prefer-tabs'
require 'config/tweaks/line-numbers'
require 'config/tweaks/fold-decorations'
require 'config/tweaks/autosaving'
require 'config/tweaks/backups'

