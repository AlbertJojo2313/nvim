-- lua/plugins/lsp/mason.lua
return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
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
                    "textlsp",
                    "ts_ls",
                    "ltex",
                },
            })
        end,
        dependencies = { 'williamboman/mason.nvim' },
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins.lsp.setup')  -- Ensure this path is correct
        end,
        dependencies = { 'williamboman/mason-lspconfig.nvim' },
    },
}
