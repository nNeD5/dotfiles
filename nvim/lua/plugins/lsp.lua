return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  config = function()
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    ---@diagnostic disable-next-line: duplicate-set-field
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = "rounded"
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end

    require("lspconfig").lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          format = {
            defaultConfig = {
              quote_style = "double"
            }
          }
        }
      }
    })
    require("lspconfig").basedpyright.setup({})
    require("lspconfig").ruff.setup({ init_options = { settings = { lint = { enable = false } } } })
    require("lspconfig").bashls.setup({})
    require("lspconfig").tinymist.setup({ settings = { formatterMode = "typstyle" } })
    require("lspconfig").gopls.setup({})
    require("lspconfig").rust_analyzer.setup {}
    --- {"documentFormattingProvider" : "true"}
  end,
}
