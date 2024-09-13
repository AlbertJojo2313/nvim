
local lspconfig = require('lspconfig')
local M = {}

function M.setup()
    lspconfig.pyright.setup({
    python = {
        analysis = {
            typeCheckingMode = 'strict',
            autoSearchPaths = true,
            diagnosticMode = "OpenFilesOnly",
            analyzeUnannotatedFunctions = true,
            enableReachabilityAnalysis = true,
            useLibraryCodeForTypes = true,
            stubPath = 'typings',
            reportMissingTypeStubs = true,
            reportMissingImports = true,
            reportMissingModuleSource = true,
            reportUnusedVariable = "error", -- Options: "none", "warning", "error"
            reportUnusedImport = "warning",


            },

        },
})
end

return M
