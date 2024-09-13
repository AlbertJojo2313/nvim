local lspconfig = require('lspconfig')

local M = {}

function M.setup()
    lspconfig.ts_ls.setup({
        --Add config there
    })
end

return M
