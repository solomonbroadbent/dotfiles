-- options for https://github.com/kaicataldo/material.vim
vim.g.airline_theme = 'material'
-- vim.g.airline_theme = 'hybrid'
vim.g.material_theme_style = 'default'
vim.g.material_terminal_italics = 1
-- can override theme colours below
vim.cmd [[
	augroup colorschemes
  	autocmd!
		" autocmd ColorScheme material highlight Folded cterm=italic gui=italic ctermfg=145 guifg='#546e7a'
	augroup end
]]
vim.cmd('colorscheme material')
