return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.8', -- or branch = '0.1.x'
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Basic Telescope setup with default settings
    require('telescope').setup {}

    -- Optional: Create an autocommand to redraw Neovim on window resize
    vim.api.nvim_create_autocmd('VimResized', {
      pattern = '*',
      command = 'redraw!',
    })

    -- Optional: Define key mappings for Telescope
    vim.api.nvim_set_keymap('n', '<C-p>', '<Cmd>Telescope find_files<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { noremap = true, silent = true })
    --vim.api.nvim_set_keymap('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
  end
}

