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
                    --"java_language_server",
                    --"r_language_server",
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
            -- This will be automatically handled by lazy.nvim based on your lazy setup
        end,
        dependencies = { 'williamboman/mason-lspconfig.nvim' },
    },
}
