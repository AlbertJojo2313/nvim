-- lua/plugins/lsp/setup.lua
local lspconfig = require('lspconfig')
local mason_lspconfig = require('mason-lspconfig')

local function setup_server(server_name)
    -- Try to load server configuration dynamically
    local success, server_config = pcall(require, 'plugins.lsp.servers.' .. server_name)
    if success and type(server_config) == "table" and type(server_config.setup) == "function" then
        server_config.setup()  -- Call the setup function without passing an empty table
    else
        print('No configuration found for ' .. server_name)
    end
end

-- Setup Mason-LSPConfig handlers
mason_lspconfig.setup_handlers({
    function(server_name)
        -- Adjust the server name if necessary, e.g., replace "tsserver" with "ts_ls" if that’s how your server is named
        setup_server(server_name)
    end,
})
