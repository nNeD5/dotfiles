return {
  "stevearc/oil.nvim",
  dependencies = { "echasnovski/mini.icons" },
  opts = {
    float = {
      padding = 2,
      max_width = 80,
      max_height = 25,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
    },
  },

  config = function(_, opts)
    local oil = require("oil")
    oil.setup(opts)
    vim.keymap.set("n", "<leader>e", oil.toggle_float)
  end
}
