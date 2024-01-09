return {
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require('nvim-web-devicons').setup({})
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
                    disabled_filetypes = {'NvimTree'},
                }
            })
        end,
    },
    {
        "utilyre/barbecue.nvim",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("barbecue").setup({})
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup({
                indent = {
                    char = "│",
                    tab_char = "│",
                },
                scope = {
                    enabled = false
                },
                exclude = {
                    filetypes = {
                        "help",
                        "Trouble",
                        "trouble",
                        "lazy",
                        "mason",
                    },
                },
            })
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = false,
        config = function()
            require("todo-comments").setup({})
        end,
        keys = {
            {"<leader>n", ":TodoTelescope<cr>"}
        }
    },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            {"<leader>t", ":TroubleToggle<cr>"},
            {"<leader>r", ":TroubleRefresh<cr>"},
        }
    },
}
