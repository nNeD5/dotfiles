return {
  "nvim-lualine/lualine.nvim",
  enabled=false,
  dependencies = { { "echasnovski/mini.icons", opts = {} } },

  opts = {
    options = {
      theme = "horizon",
      component_separators = "",
      section_separators = { left = "", right = "" },
    },
    -- inactive_winbar = {"filename"},
    -- winbar = { lualine_a = { "filename" } },
  },
}
