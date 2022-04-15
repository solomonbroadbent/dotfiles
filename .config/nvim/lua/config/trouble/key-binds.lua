local which_key = require('which-key')

local opts = { prefix = '<leader>', noremap = true, silent = true }

local actions = {
	toggle = "<cmd>TroubleToggle<cr>",

	show_workspace_diagnostics = "<cmd>Trouble workspace_diagnostics<cr>",

	show_document_diagnostics = "<cmd>Trouble document_diagnostics<cr>",

	show_loc_list = "<cmd>Trouble loclist<cr>",

	show_quick_fixes = "<cmd>Trouble quickfix<cr>",

	show_lsp_references = "<cmd>Trouble lsp_references<cr>",
}

which_key.register({
	x = {
		name = 'trouble',

		x = { actions.toggle, 'toggle' },
		w = { actions.show_workspace_diagnostics, 'workspace diagnostics' },
		d = { actions.show_document_diagnostics, 'document diagnostics' },
		l = { actions.show_loc_list, 'loc list' },
		q = { actions.show_quick_fixes, 'quick fixes' },
		R = { actions.show_lsp_references, 'reference lsp' },
	}
}, opts)

