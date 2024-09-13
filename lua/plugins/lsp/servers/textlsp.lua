
local lspconfig = require('nvim-lspconfig')
local M = {}

function M.setup()
    lspconfig.textlsp.setup({
        --Add config for text lsp
    })
end

return M
