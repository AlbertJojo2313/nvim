-- lua/plugins/lsp/mason.lua
return {
    -- Mason.nvim plugin
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    
    -- Mason-LSPConfig plugin
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "clangd",
                    "ast_grep",
                    "sqlls",
                    -- Uncomment and add more servers if needed
                    -- "java_language_server",
                    -- "r_language_server",
                    "textlsp",
                    "tsserver",  -- Make sure this is the correct name
                    "ltex",
                },
            })
        end,
        dependencies = { 'williamboman/mason.nvim' },
    },
    
    -- nvim-lspconfig plugin
    {
        'neovim/nvim-lspconfig',
        config = function()
            -- lspconfig setup will be handled by lazy.nvim based on the lazy setup
        end,
        dependencies = { 'williamboman/mason-lspconfig.nvim' },
    },
}
