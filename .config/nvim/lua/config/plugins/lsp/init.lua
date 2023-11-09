
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
})



-- lspconfig bs
-- TODO: add autocompletion plugin!
