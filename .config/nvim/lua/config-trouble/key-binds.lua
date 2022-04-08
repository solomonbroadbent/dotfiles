local opt = {silent = true, noremap = true}

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opt)

vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opt)

vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", opt)

vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opt)

vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opt)

vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", opt)
