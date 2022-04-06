local lsp_installer = require('nvim-lsp-installer')

-- local langauge_servers = {
--    '',
-- }

-- local function sync_language_servers ()
--    require('../').install_language_servers(language_servers)
-- end 

-- TODO: add custom command for checking language server list and installing from it
vim.cmd[[ command! LspSync lua require('custom-scripts').install_language_servers() ]]
vim.cmd [[ command! Test lua require('custom-scripts').test() ]]

-- TODO: look into LSIF integration https://lsif.dev
-- TODO: https://github.com/hrsh7th/nvim-cmp/issues/156#issuecomment-916338617

lsp_installer.on_server_ready(function(server)
    local opts = {
      -- pass this capabilities from to every lsp server. makes nvim-cmp work with lsp-installer!
      capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    }

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- decorate the provided server configuration with the necessary properties before passing to lspconfig
    -- 	https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
