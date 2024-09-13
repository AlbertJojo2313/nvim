--General settings
vim.opt.expandtab = true
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

--Space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Example of setting up an auto commands to format on save
vim.api.nvim_create_autocmd("BufWritePre", {
 pattern = "*",
 command = "lua vim.lsp.buf.format()",


})
