require('nvim-treesitter.configs').setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = {
    -- 'css',
    'dockerfile',
    -- 'go',
    -- 'gomod',
    -- 'gowork',
    -- 'graphql',
    -- 'html',
    -- 'http',
    -- 'java',
    'javascript',
    -- 'jsdoc',
    -- 'json',
    'lua',
    -- 'python',
    -- 'regex',
    'rust',
    -- 'scss',
    -- 'toml',
    'typescript',
    -- 'yaml',
  },

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true
  },

}

-- treesitter based folding
vim.cmd [[ set foldmethod=expr ]]
vim.cmd [[ set foldexpr=nvim_treesitter#foldexpr() ]]
