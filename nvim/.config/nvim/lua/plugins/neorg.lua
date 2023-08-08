return {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.summary"] ={}, 
                ["core.export"] = {},
                --  NOTE: require neovim version >= 0.10
                -- ["core.ui.calendar"] = {},
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/Notes",
                        },
                        default_workspace = "notes",
                    },
                },
            },
        }
    end,

    keys = { { "<leader>ni", "<cmd>Neorg index<cr>", desc = "Open neorg index" } },
}
