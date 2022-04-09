local module = {}

module.setup_key_binds = function (buffer_number)
	local which_key = require 'which-key'

	local gitsigns = package.loaded.gitsigns
	local hunk_key_bind = 'h'

	local navigate_to_next_hunk = function ()
      if vim.wo.diff then return hunk_key_bind end
      vim.schedule(function() gitsigns.next_hunk() end)
      return '<ignore>'
  end

	local navigate_to_previous_hunk = function ()
		if vim.wo.diff then return hunk_key_bind end
    vim.schedule(function() gitsigns.prev_hunk() end)
    return '<ignore>'
	end

	local blame_full_line = function ()
		gitsigns.blame_line { full = true }
	end

	which_key.register({

		['['] = {
			[hunk_key_bind] = { navigate_to_next_hunk, 'next hunk' },
		},

		[']'] = {
			[hunk_key_bind] = { navigate_to_previous_hunk, 'previous hunk' },
		},

	}, { buffer = buffer_number })

	local options = { prefix = 'leader', buffer = buffer_number }
	which_key.register({

		g = {
			name = 'git',

			b = {
				name = 'blame',

				l = { blame_full_line, 'line', },
				t = { gitsigns.toggle_current_line_blame, 'toggle (line)', }
			},

			s = {
				name = 'stage',

				b = { gitsigns.stage_buffer, 'buffer', },
				h = { gitsigns.stage_hunk, 'hunk', },
			},

			reset = {
				name = 'reset',

				b = { gitsigns.reset_buffer, 'buffer', },
			},

			d = {
				name = 'diff',

				d = { gitsigns.diffthis, 'diff this', },
			},

		},
	}, options)
end

return module
