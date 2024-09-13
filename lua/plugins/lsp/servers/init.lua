-- lua/plugins/lsp/servers/init.lua

local M = {}

-- List of server names you want to configure
local servers = {
    'ast_grep',
    'clangd',
    --'java_language_server',
    'ltex',
    'lua_ls',
    'pyright',
    --'r_language_server',
    'sqlls',
    'textlsp',
}

for _, server in ipairs(servers) do
    local success, server_config = pcall(require, 'plugins.lsp.servers.' .. server)
    if success and type(server_config) == "table" and type(server_config.setup) == "function" then
        M[server] = server_config
    else
        print('No configuration found for ' .. server)
    end
end

return M

