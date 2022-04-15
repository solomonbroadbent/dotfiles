local which_key = require 'which-key'

local actions = {
	find_files = '<cmd>Telescope find_files<cr>',
	live_grep = '<cmd>Telescope live_grep<cr>',
	find_buffers = '<cmd>Telescope buffers<cr>',
	help_tags = '<cmd>Telescope help_tags<cr>',
}

which_key.register({
	f = {
		name = 'find',

		f = { actions.find_files, 'files', },
		g = { actions.live_grep, 'grep', },
		b = { actions.find_buffers, 'buffers', },
		h = { actions.help_tags, 'help tags', },
	}
}, { prefix = '<leader>' })
