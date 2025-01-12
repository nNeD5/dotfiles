return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",   -- Automatically update parsers when installing/updating
  main = "nvim-treesitter.configs",
  opts = {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
      disable = {
         "typst",
        "markdown"
      }
    }
  },
}
