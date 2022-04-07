local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>hf', '<cmd>lua require("harpoon.mark").add_file()<cr>', opts)

vim.api.nvim_set_keymap('n', '<leader>hm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)

vim.api.nvim_set_keymap('n', '<leader>hn', '<cmd>lua require("harpoon.ui").nav_next()<cr>', opts)

vim.api.nvim_set_keymap('n', '<leader>hp', '<cmd>lua require("harpoon.ui").next_prev()<cr>', opts)
