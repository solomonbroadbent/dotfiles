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

