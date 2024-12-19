return {
  "echasnovski/mini.surround",
  version = "*",
  opts = {
    mappings = {
      add = "<leader>ca",          -- Add surrounding in Normal and Visual modes
      delete = "<leader>cd",       -- Delete surrounding
      find = "<leader>cf",         -- Find surrounding (to the right)
      find_left = "<leader>cF",    -- Find surrounding (to the left)
      highlight = "<leader>ch",    -- Highlight surrounding
      replace = "<leader>cr",      -- Replace surrounding
      update_n_lines = "<leader>cn", -- Update `n_lines`

      suffix_last = "l",   -- Suffix to search with "prev" method
      suffix_next = "n",   -- Suffix to search with "next" method
    },
  },
}
