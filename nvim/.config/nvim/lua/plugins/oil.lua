return {
    "stevearc/oil.nvim",
    opts = {
        delete_to_trash = true,
       default_file_explorer = true,
    },
    -- Optional dependencies
    init = function ()
        require("oil").setup()
    end,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = { { "<leader>e", "<cmd>Oil<cr>" } },
}
