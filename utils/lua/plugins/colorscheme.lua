return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "storm",
            transparent = false,
            styles = {
                sidebars = "ligth",
                floats = "light",
            },
            hide_inactive_statusline = true, -- FIX: Do nothig
            on_colors = function(colors)
                colors.bg = "#000000"
                colors.bg_float = "#000000"
                colors.bg_sidebar = "#000000"
            end,
        },
    },
    {
        -- "git"
        "rebelot/kanagawa.nvim"
    },
}
