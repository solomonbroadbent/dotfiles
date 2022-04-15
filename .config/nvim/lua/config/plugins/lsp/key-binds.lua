local which_key = require 'which-key'

local module = {}

local opts = { noremap = true, silent = true }

module.unset_general_key_binds = function ()
	which_key.register({
		H = { '<nop>' }, -- using H for help
	 	r = { '<nop>' }, -- using r for 'refactor'
	}, opts)
end

module.lsp_on_attach = function (_, buffer_number)
	local prefix = '<cmd>lua vim.lsp.buf'

	local key_binds = {
		g = {
			name = 'go to',

			D = { prefix .. '.declaration()<cr>', 'declaration', },
			d = { prefix .. '.definition()<cr>', 'definition', },
			i = { prefix .. '.implementation()<cr>', 'implementation', },
			r = { prefix .. '.references()<cr>', 'references', },
		},

		H = {
			name = 'help',

			H = { prefix .. '.hover()<cr>', 'hover popup', },
			s = { prefix .. '.signature_help()<cr>', 'signature definition', },
			a = { prefix .. '.code_action()<cr>', 'code action', },
			t = {
				name = 'type',

				d = { prefix .. '.type_definition()<cr>', 'defintion', },
			},
		},

		r = {
			name = 'refactor',

			f = { prefix .. '.formatting()<cr>', 'format', },
			r = { prefix .. '.rename()<cr>', 'rename', },
		},

	}

	which_key.register(key_binds, { buffer = buffer_number })
end

module.lsp_flags = {
	debounce_text_changes = 150, -- apparently will become default in nvim 7.0
}

return module
