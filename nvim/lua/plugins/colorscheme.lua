return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    styles = {
      transparency = true,
    },
    highlight_groups = {
      Pmenu = { bg = "overlay" },
      PmenuSel = { fg = "love" },
      PmenuKindSel = { fg = "love" },
    },
  }
}

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     transparent = true,
--     styles = {
--       floats = "transparent",
--     },
--     on_highlights = function(hl)
--       hl.LineNrAbove = {
--         fg = "#aaaaaa",
--       }
--       hl.LineNrBelow = {
--         fg = "#aaaaaa",
--       }
--       hl.LineNr = {
--         fg = "#ffffaa",
--         bold = true,
--       }
--     end,
--   },
-- }

-- "ellisonleao/gruvbox.nvim", priority = 1000, opts = {}
