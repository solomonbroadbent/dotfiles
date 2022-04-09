local which_key = require('which-key')

local opts = { prefix = '<leader>', noremap = true, silent = true }

local actions = {
	harpoon_file = '<cmd>lua require("harpoon.mark").add_file()<cr>',

	show_menu = '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>',

	next_mark =  '<cmd>lua require("harpoon.ui").nav_next()<cr>',

	prev_mark = '<cmd>lua require("harpoon.ui").next_prev()<cr>',
}

which_key.register({
	h = {
		name = 'harpoon',

		f = { actions.harpoon_file, 'file here' },
		m = { actions.show_menu, 'menu' },
		n = { actions.next_mark, 'next' },
		p = { actions.prev_mark, 'previous' },
	},
}, opts)
