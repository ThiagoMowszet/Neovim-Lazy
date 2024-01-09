return {

    {
		"nvim-telescope/telescope.nvim",
        lazy = false,
		dependencies = {
            { "nvim-lua/plenary.nvim" }
        },

        keys = {
            { "<C-p>", ":Telescope find_files<cr>", desc = "find files" },
            { "<leader>gr", ":Telescope live_grep<cr>", desc = "find all word in files" },
        }
	}

}
