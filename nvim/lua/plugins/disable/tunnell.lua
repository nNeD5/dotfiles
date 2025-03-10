return {
  enables = false,
  "sourproton/tunnell.nvim",
  opts = {},
  keys = {
    -- suggestions for keymaps:
    { "<leader>rc", ":TunnellCell<CR>",   mode = { "n" }, desc = "Tunnell cell" },
    { "<leader>r",  ":TunnellRange<CR>",  mode = { "v" }, desc = "Tunnell range" },
    cmd = {
      "TunnellCell",
      "TunnellRange",
      "TunnellConfig",
    },
  },
  -- config = function(_, otps)
  --   local tunnel = require("tunnell.nvim")
  --   tunnel.setup(otps)
  -- end
}
