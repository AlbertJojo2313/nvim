local M = {}

function M.setup_keymaps(bufnr)
    vim.keymap.set(bufnr, 'n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set(bufnr, 'n', 'gd', vim.lsp.buf.definition, {})
    --vim.keymap.set(bufnr, { 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
end

return M
