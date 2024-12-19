return {
  "MeanderingProgrammer/markdown.nvim",
  main = "render-markdown",
  name = "render-markdown",
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
  opts = {
    render_modes = { "v", "n", "i", "t" },
    heading = {
      -- left_pad = 0.15,
      backgrounds = {},
    },
    bullet = {
      enabled = true,
      icons = { "●  ", "○  ", "◆  ", "◇  " },
    },
    code = {
      disable_background = true,
      border = "thick",
    }
  },
}
