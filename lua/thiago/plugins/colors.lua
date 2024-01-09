return {
    {
        "rose-pine/neovim",
        name = 'rose-pine',
        priority = 1000,
        config = function()
            require('rose-pine').setup({})
            vim.cmd.colorscheme "rose-pine-main"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {"p00f/nvim-ts-rainbow"},
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {"javascript", "lua", "json", "html", "css", "typescript", "markdown", "go", "python"},

                sync_install = false,

                auto_install = true,

                highlight = {
                    enable = true,
                },

                rainbow = {
                    enable = true,
                    extended_mode = true,
                }
            })
        end,
    },
}
