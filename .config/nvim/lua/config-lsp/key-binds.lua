local module = {}

local opts = { noremap = true, silent = true }

module.unset_general_key_binds = function ()
	vim.api.nvim_set_keymap('n', 'H', '<nop>', opts) -- using H for help
	vim.api.nvim_set_keymap('n', 'r', '<nop>', opts) -- using r for 'refactor'
end

module.lsp_on_attach = function (_, bufnr)
	local prefix = '<cmd>lua vim.lsp.buf'

	local key_binds = {
		{ sequence = 'gD', command = prefix .. '.declaration()<cr>' },
		{ sequence = 'gd', command = prefix .. '.definition()<cr>' },
		{ sequence = 'gi', command = prefix .. '.implementation()<cr>' },
		{ sequence = 'gr', command = prefix .. '.references()<cr>' },

		{ sequence = 'HH', command = prefix .. '.hover()<cr>' },
		{ sequence = 'Hs', command = prefix .. '.signature_help()<cr>' },
		{ sequence = 'Ha', command = prefix .. '.code_action()<cr>' },
		{ sequence = 'Htd', command = prefix .. '.type_definition()<cr>' },

		{ sequence = 'rf', command = prefix .. '.formatting()<cr>' },
		{ sequence = 'rr', command = prefix .. '.rename()<cr>' },
	}

	for _, key_bind in pairs(key_binds) do
		vim.api.nvim_buf_set_keymap(bufnr, 'n', key_bind.sequence, key_bind.command, opts)
	end
end

module.lsp_flags = {
	debounce_text_changes = 150, -- apparently will become default in nvim 7.0
}

return module
