local lspconfig = require('lspconfig')
local M = {}

function M.setup()
    lspconfig.ast_grep.setup({
        --Add configs there
    })
end

return M
