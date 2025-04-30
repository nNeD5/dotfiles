return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    { "jvgrootveld/telescope-zoxide" }
  },

  opts = {
    defaults = {
      sorting_strategy = "ascending",
      layout_strategy = "bottom_pane",
      layout_config = {
        height = 0.4,
      },
      path_display = {
        "filename_first",
      },
    },
    extension = {
      fzf = {},
      zoxide = {}
    }
  },

  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)

    telescope.load_extension("fzf")
    telescope.load_extension("zoxide")

    local telescope_builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>sf", telescope_builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>sh", telescope_builtin.help_tags, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>sb", telescope_builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>st", telescope_builtin.treesitter, { desc = "Telescope treesitter" })
    vim.keymap.set("n", "<leader>sd", telescope_builtin.diagnostics, { desc = "Telescope treesitter" })
    vim.keymap.set("n", "<leader>sg", telescope_builtin.live_grep, { desc = "Telescope grep" })
    vim.keymap.set("n", "<leader>zi", require("telescope").extensions.zoxide.list)
  end
}
