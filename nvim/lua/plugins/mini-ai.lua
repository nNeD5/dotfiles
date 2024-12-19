return {
  "echasnovski/mini.ai",
  version = "*",
  dependencies = { { "nvim-treesitter/nvim-treesitter-textobjects" } },
  config = function()
    local miniai = require("mini.ai")
    miniai.setup({
      custom_textobjects = {
        f = miniai.gen_spec.treesitter({ a = '@function.outer', i = '@function.inner' }),
        F = miniai.gen_spec.function_call(),
      }
    })
  end,
}
