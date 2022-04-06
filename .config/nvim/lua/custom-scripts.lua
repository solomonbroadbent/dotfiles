local custom_scripts = {}

function custom_scripts.test ()
    print('hello world')
end

function custom_scripts.install_language_servers ()
    print('install ls')
    local langauge_servers = {
	'',
    }

    for _, name in pairs(servers) do
	local server_is_found, server = lsp_installer.get_server(name)
	if server_is_found and not server:is_installed() then
	    print("installing language server " .. name)
	    server:install()
	end
    end
end

return custom_scripts
