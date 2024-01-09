return {
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup({})
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        },
    },
    {
        "szw/vim-maximizer",
        keys = {
            {"<leader>sm", ":MaximizerToggle<cr>"},
        },
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
        config = function()
            require('Comment').setup()
        end,
    },
    {
        "ThePrimeagen/harpoon",
    },
    {
        "tpope/vim-fugitive",
        keys = {
            {"<leader>gi", ":Git ii<cr>"},
            {"<leader>ga", ":Git aa .<cr>"},
            {"<leader>gst", ":Git st<cr>"},
            {"<leader>gc", ":Git ci<cr>"},
            {"<leader>ps", ":Git ps<cr>"},
        },
    },
    {
        "rmagatti/goto-preview",
        config = function()
            require("goto-preview").setup({
                default_mappings = true,
                preview_window_title = { enable = true, position = "left" },
            })
        end,
    },
    {
        "ray-x/go.nvim",
        config = function()
            require('go').setup()
        end,
    },
}
