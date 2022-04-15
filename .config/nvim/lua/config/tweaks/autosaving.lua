-- vim auto save all files
vim.cmd [[
	au FocusLost * :wa
	au InsertLeave * :wa
]]
