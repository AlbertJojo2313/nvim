-- lua/lspconfig/ltex.lua
local lspconfig = require('nvim-lspconfig')
local M = {}

function M.setup()
    lspconfig.ltex.setup({
    settings = {
        ltex = {
            language = "en",
            diagnosticSeverity = "hint",
            completion = true,
            dictionary = {


            },
        },
    },
})
end
return M
