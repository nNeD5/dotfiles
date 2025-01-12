return {
  "stevearc/oil.nvim",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  opts = {
    -- new/moved/renamed
    skip_confirm_for_simple_edits = true,
    float = {
      padding = 2,
      max_width = 80,
      max_height = 25,
      border = "rounded",
    },
  },

  config = function(_, opts)
    local oil = require("oil")
    oil.setup(opts)
    vim.keymap.set("n", "<leader>e", oil.toggle_float)
  end
}
