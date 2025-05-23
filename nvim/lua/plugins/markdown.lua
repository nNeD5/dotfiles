return {
  "MeanderingProgrammer/markdown.nvim",
  main = "render-markdown",
  name = "render-markdown",
  dependencies = { "nvim-treesitter/nvim-treesitter",
    { "echasnovski/mini.icons", opts = {} } },
  opts = {
    render_modes = { "v", "n", "i", "t" },
    latex = { enable = false },
    heading = {
      icons = {},
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
    },
    checkbox = {
      custom = {
        todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
        cancel = { raw = "[!]", rendered = " ", highlight = "RenderMarkdownTodo" },
        cancel = { raw = "[?]", rendered = " ", highlight = "RenderMarkdownTodo" },
      },
    },
  },
}
