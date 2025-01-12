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
    -- Config --
    local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
    ---@diagnostic disable-next-line: duplicate-set-field
    function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
      opts = opts or {}
      opts.border = "rounded"
      return orig_util_open_floating_preview(contents, syntax, opts, ...)
    end
    vim.diagnostic.config({
      virtual_text = false,
      severity_sort = true,
      update_in_insert = true,
      float = {
        source = "if_many",
        severity_sort = true,
      },
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN] = "",
          [vim.diagnostic.severity.HINT] = "",
          [vim.diagnostic.severity.INFO] = "",
        },
      }
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client ~= nil then
          client.server_capabilities.semanticTokensProvider = nil
        end
      end,
    });


    -- LSP servers
    require("lspconfig").ruff.setup({
      init_options = {
        settings = {
          lint = { enable = false } }
      }
    })
    require("lspconfig").tinymist.setup({ settings = { formatterMode = "typstyle" } })
    require("lspconfig").rust_analyzer.setup({})
    require("lspconfig").basedpyright.setup({})
    require("lspconfig").lua_ls.setup({})
    require("lspconfig").bashls.setup({})
    require("lspconfig").gopls.setup({})
    require("lspconfig").ols.setup({})
    -- require'lspconfig'.typos_lsp.setup{}
  end,
}
