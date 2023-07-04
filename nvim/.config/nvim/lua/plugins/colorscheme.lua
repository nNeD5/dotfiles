return {
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = {
            style = "storm",
            transparent = true,
            styles = {
                sidebars = "ligth",
                floats = "light",
            },
            hide_inactive_statusline = true, -- FIX: Do nothig
            on_colors = function(colors)
                colors.bg = "#24283b"
                colors.bg_float = "#24283b"
                colors.bg_sidebar = "#24283b"
            end,
        },
    },
    {
        -- "git"
        "rebelot/kanagawa.nvim"
    },
}
