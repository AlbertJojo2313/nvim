--Plugins manager
-- Plugins manager
return {
    require("plugins.theme"),
    require("plugins.telescope"),
    require("plugins.tree-sitter"),
    require("plugins.neo-tree"),
    require("plugins.lualine"),

    -- LSP
    require('plugins.lsp.init') -- Corrected here
}
