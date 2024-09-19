-- lua/plugins/lsp/setup.lua

local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')

local function setup_server(server_name)
    local success, server_config = pcall(require, 'plugins.lsp.servers.' .. server_name)
    if success and type(server_config) == "table" and type(server_config.setup) == "function" then
        server_config.setup({
            on_attach = function(client, bufnr)
                -- Add keymaps or other configurations here if needed
                local keymaps = require('plugins.lsp.keymaps')
                keymaps.setup_keymaps(bufnr)

                vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

                client.resolved_capabilities.document_formatting = true
            end,
            capabilities = vim.lsp.protocol.make_client_capabilities(),
        })
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
