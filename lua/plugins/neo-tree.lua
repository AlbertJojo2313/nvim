return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- Optional, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim", -- Optional image support in preview window
    },
    config = function()
        require("neo-tree").setup({
            sources = {'filesystem', 'buffers', 'git_status'},
            
            filesystem = {
                follow_current_file = true,
                use_libuv_file_watcher = true,
                filtered_items = {
                    hide_dotfiles = false,
                },
                window = {
                    width = 30,
                    mappings = {
                        ["<space>"] = false,
                        ["<leader>r"] = "open",
                        ["<tab>"] = "toggle_node",
                        ["<bs>"] = "navigate_up",
                    },
                },
            },

            buffers = {
                window = {
                    mappings = {
                        ["<space>"] = false,
                        ["<cr>"] = "open",
                        ["<tab>"] = "toggle_node",
                    },
                },
            },

            git_status = {
                window = {
                    mappings = {
                        ["<space>"] = false,
                        ["<leader>r"] = "open",
                    },
                },
            },

            window = {
                mappings = {
                    ["P"] = {"toggle_preview", config = {use_float = true, use_image_nvim = true}},
                    ["<space>"] = false,
                    ["<leader>r"] = "open",
                    ["<tab>"] = "toggle_mode", -- Used to either expand or collapse directories
                    ["<bs>"] = "navigate_up", -- Backspace to move up a directory level
                    ["<c-e>"] = "rename", --- Ctrl+e to rename
                    ["<leader>d"] = "delete",
                    ["<c-c>"] = "copy",
                    ["<c-x>"] = "cut",
                    ["<c-v>"] = "paste",
                },
            },

            async_directory_scan = "auto",
            scan_mode = "deep",
            check_gitignore_in_search = true,
        })

        -- Key mappings
        vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
        vim.keymap.set("n", "<C-f>", ":wincmd p<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>", { noremap = true, silent = true })
    end,
}

