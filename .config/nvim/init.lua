-- make neovim use the ~/.vimrc
-- set runtimepath^=~/.vim runtimepath+=~/.vim/after
-- let &packpath=&runtimepath
-- source ~/.vimrc

require('config')

vim.opt.termguicolors = true -- use colors

-- options for https://github.com/vim-airline/vim-airline
vim.g.airline_section_z = '' -- turn off file position
vim.api.nvim_set_var('airline#parts#ffenc#skip_expected_string', 'utf-8[unix]') -- don't need to be told when file encoding is utf-8
vim.g.airline_skip_empty_sections = 1

vim.api.nvim_set_var('airline#extensions#wordcount#enabled', 0)
vim.api.nvim_set_var('airline#extensions#whitespace#enabled', 0)

-- TODO: fix unicode for airline
vim.g.airline_left_sep = '\u{E0B4}'
vim.g.airline_right_sep = '\u{E0B6}'
vim.g.airline_left_alt_sep = '\u{E0B5}' -- haven't seen these thinner ones actually get used...
vim.g.airline_right_alt_sep = '\u{E0B7}'

-- options for https://github.com/kristijanhusak/vim-hybrid-material theme
-- vim.g.enable_bold_font = 1
-- vim.g.enable_italic_font = 1
-- vim.opt.background = dark
-- vim.g.airline_theme = 'hybrid'
-- colorscheme hybrid_material

-- options for https://github.com/mhartington/oceanic-next
-- syntax enable
-- let g:oceanic_next_terminal_bold = 1
-- let g:oceanic_next_terminal_italic = 1
-- let g:airline_theme='oceanicnext'
-- colorscheme OceanicNext

-- options for https://github.com/kaicataldo/material.vim
vim.g.airline_theme = 'material'
-- vim.g.airline_theme = 'hybrid'
vim.g.material_theme_style = 'default'
vim.g.material_terminal_italics = 1
vim.cmd('colorscheme material')

-- things for https://github.com/ryanoasis/vim-devicons
vim.g.encoding = 'UTF-8'
vim.g.airline_powerline_fonts = 1
vim.g.guifont = 'Fira_Code:h14'

-- TODO: disable vi compatibility. apparently it can cause issues
-- vim.o.nocompatible = true
-- keep lines showing as scroll
vim.o.scrolloff = 10

-- this is some magic so it's hybrid relative numbers in normal mode, but otherwise just absolute line numbers
-- https://jeffkreeftmeijer.com/vim-number/
-- TODO: move to another file
vim.o.number = true
vim.cmd [[
	augroup numbertoggle
		autocmd!
		autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
		autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
	augroup END
]]

-- highlight cursor line
vim.o.cursorline = true
vim.cmd('hi CursorLine cterm=NONE ctermbg=8 ctermfg=NONE') -- set the styling for the current line highlighting
vim.cmd('hi CursorLineNr term=bold cterm=bold ctermbg=8 ctermfg=012 gui=bold') -- set the styling for the current line number highlighting

-- tab settings
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = false
vim.opt.smartindent = true

-- highlight characters as searching
vim.opt.incsearch = true
vim.g.nobackup = true -- don't make annoying .swap files (i think?)
vim.g.nowrap = true -- don't wrap on load. maybe not working...

-- use space key as leader — first ensure it isn't mapped elsewhere first
vim.api.nvim_set_keymap('n', '<Space>', '<nop>',  {noremap = true, silent = true })
vim.g.mapleader = ' '

-- crap for telescope
--  TODO: move to telescope config file
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {noremap = true, silent = true})

