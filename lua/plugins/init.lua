--Plugins manager
return {
    require("plugins.catppuccin"),

    require("plugins.telescope"),
    require("plugins.tree-sitter"),
    require("plugins.neo-tree"),
    require("plugins.lualine"),

    -- LSP
    require("plugins.lsp.mason"),
    --require("plugins.lsp")
}
