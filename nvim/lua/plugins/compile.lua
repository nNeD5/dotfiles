return {
  "nNeD5/compile.nvim",
  dependencies = { "m00qek/baleia.nvim" },
  -- config = function() end,
  opts = {},
  config = function()
    compile = require("compile")
    compile.setup()
    vim.keymap.set("n", "<leader>r", compile.compile)
  end
}
