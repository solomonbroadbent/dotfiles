vim.o.foldlevel = 2 -- fold blocks nested n levels down when opening a file

-- TODO: change fillchars to tabs (need the math)
-- TODO: unbold the folds + maybe change colour to yellow
-- TODO: [0.7] lua-ify this function
vim.o.fillchars = 'fold: ' -- remove distracting fold spam characters
vim.cmd [[
	set foldtext=CustomFoldText()
	function CustomFoldText()
		let indent_level = indent(v:foldstart)
		let indent = repeat(' ', indent_level)

		let line_count = v:foldend - v:foldstart + 1
		let snippet = substitute(getline(v:foldstart), "^ *\" *", "", 1)

		return indent . snippet . ' ... <- ' . line_count . ' lines'
	endfunction
]]
