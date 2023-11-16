local util = require('lspconfig.util')

require('mason').setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

require('mason-lspconfig').setup({
	ensure_installed = {
		'gopls',
		'lua_ls'
	}
})

require('lspconfig')['gopls'].setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require('lspconfig')['lua_ls'].setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = {'gopls'},
	filetypes = {
		'go',
		'gomod',
		'gowork',
		'gotmpl',
	},
	root_dir = util.root_pattern('go.work', 'go.mod', '.git') -- idk wut am doin
	-- TODO: check "analyzers" doc in gopls repo to find useful features
})



-- lspconfig bs
-- TODO: add autocompletion plugin!
