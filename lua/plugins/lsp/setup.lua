-- lua/plugins/lsp/setup.lua
local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

local function setup_server(server_name)
    local success, server_config = pcall(require, 'plugins.lsp.servers.' .. server_name)
    if success and type(server_config) == "table" and type(server_config.setup) == "function" then
        server_config.setup({})
    else
        print('No configuration found for ' .. server_name)
    end
end

-- Setup Mason-LSPConfig handlers
mason_lspconfig.setup_handlers({
    function(server_name)
        setup_server(server_name)
    end,
})

