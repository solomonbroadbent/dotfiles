local which_key = require 'which-key'

local module = {}

local reset_treesitter_hightlighting = ':write | edit | TSBufEnable highlight'

module.key_binds = {
	prefix = 'g', -- add to inbuilt 'visual grow' mode
 	prefix_subcommand = 'v',

	start = 'v',
	node_grow = 'n',
	node_shrink = 'N',
	scope_grow = 's',
	-- scope_shrink = 'S',
}

local options = { mode = 'v', prefix = module.key_binds.prefix }

module.setup_key_bind_prompts = function ()
	which_key.register({
		[module.key_binds.prefix_subcommand] = {
			name = 'visual — treesitter selection',

			[module.key_binds.start] = { 'start selection' },
			[module.key_binds.node_grow]  = { 'grow' },
			[module.key_binds.node_shrink] = { 'shrink' },
			[module.key_binds.scope_grow] = { 'shrink' },

			['!'] = { reset_treesitter_hightlighting, 'reset highlighting' },
		}
	}, options)
end


-- delete around function
-- grow selection
-- format?
-- format selection?
-- indent
-- un-indent

-- *OTHER STUFF* --
-- TODO: set iskeyword+=- -- also treat text object with kebabs case ('text-object-name') as singular text objects
-- TODO: create namespace for all lua files to avoid clashes
-- TODO: make packer auto install?
-- TODO: lazy loading stuff
-- TODO: maybe swap to vim closer from autopairs
--
return module
