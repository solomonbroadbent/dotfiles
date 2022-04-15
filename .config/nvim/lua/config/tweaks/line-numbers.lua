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

