local M = {}

function M.setup_lsp_keymaps(bufnr)
    --local opts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

return M
