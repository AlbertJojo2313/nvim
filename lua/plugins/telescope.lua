return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8', -- or branch = '0.1.x'
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')

        -- Basic Telescope setup with default settings
        telescope.setup {}

        -- Optional: Create an autocommand to redraw Neovim on window resize
        vim.api.nvim_create_autocmd('VimResized', {
            pattern = '*',
            command = 'redraw!',
        })

        -- Optional: Define key mappings for Telescope
        vim.api.nvim_set_keymap('n', '<C-p>', '<Cmd>Telescope find_files<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { noremap = true, silent = true })
        -- vim.api.nvim_set_keymap('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', { noremap = true, silent = true })

        -- Load the ui-select extension
        telescope.load_extension('ui-select')
    end,

    -- Add telescope-ui-select.nvim as a separate entry in dependencies
    {
        'nvim-telescope/telescope-ui-select.nvim',
        after = 'telescope.nvim', -- ensure telescope.nvim is loaded first
        config = function()
            local telescope = require('telescope')
            telescope.setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({})
                    }
                }
            })
            telescope.load_extension('ui-select')
        end
    }
}

