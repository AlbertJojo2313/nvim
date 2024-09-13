-- lua/lspconfig/sqlls.lua

local lspconfig = require('nvim-lspconfig')
local M = {}

function M.setup()
    lspconfig.sqlls.setup({
        settings = {
            sql = {
                connections = {
                    name = "MyDatabase",
                    driver = "postgresql",
                    dataSourceName = "user=youruser dbname=yourdb sslmode=disable",
                },
            },
        },
    })
end

return M
