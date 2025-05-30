return {
  "zk-org/zk-nvim",
  config = function()
    require("zk").setup({
      -- See Setup section below
      picker = "telescope",
      lsp = {
        -- `config` is passed to `vim.lsp.start_client(config)`
        config = {
          cmd = { "zk", "lsp" },
          name = "zk",
          -- on_attach = ...
          -- etc, see `:h vim.lsp.start_client()`
        },

        -- automatically attach buffers in a zk notebook that match the given filetypes
        auto_attach = {
          enabled = false,
          filetypes = { "markdown" },
        },

      }
    })
  end
}
