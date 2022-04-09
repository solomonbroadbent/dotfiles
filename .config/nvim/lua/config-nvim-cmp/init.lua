local cmp = require 'cmp'

cmp.setup({

  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end
  },

  mapping = {
    ['<S-tab>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
    }),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-k>'] = cmp.mapping.select_prev_item(),
  },

  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
    }, {
      { name = 'buffer' },
    }),

})
