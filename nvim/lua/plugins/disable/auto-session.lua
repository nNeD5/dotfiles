return {
  "rmagatti/auto-session",
  enabled = false,
  lazy = false,
  --- @module "auto-session"
  --- @type AutoSession.Config
  opts = {
    suppressed_dirs = { "~/", "/" },
  },
  config = function(_, opts)
    require("auto-session").setup(otps)
    vim.keymap.set("n", "<leader>ss", "<cmd>SessionSearch<CR>")
  end
}
