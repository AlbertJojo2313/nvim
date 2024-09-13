local lspconfig = require('lspconfig')
local M = {}

function M.setup()
    lspconfig.clangd.setup({
       cmd = {'clangd', "--background-index", "--clang-tidy"},
    })
end

return M
