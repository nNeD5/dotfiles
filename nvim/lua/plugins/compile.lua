return {
  "nNeD5/compile.nvim",
  dependencies = { "m00qek/baleia.nvim" },
  -- config = function() end,
  opts = {},
  config = function(_, opts)
    compile = require("compile")
    compile.setup(opts)
    vim.keymap.set("n", "<leader>r", compile.compile)
    vim.keymap.set("n", "<leader>R", compile.set_cmd)
    vim.keymap.set("n", "<C-c>", compile.stop)
  end
}
