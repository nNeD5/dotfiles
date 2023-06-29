local nls = require("null-ls")
return {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
        opts.sources = {
            nls.builtins.formatting.latexindent,
            nls.builtins.diagnostics.zsh,
            nls.builtins.formatting.beautysh,
            -- nls.builtins.formatting.prettierd.with({
            --     env = {
            --         PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/utils/.prettierrc.toml"),
            --     },
            --     dynamic_command = function()
            --         return "prettier"
            --     end,
            -- }),

            -- python
            nls.builtins.formatting.autopep8,
            nls.builtins.formatting.isort,
            nls.builtins.formatting.black,
            nls.builtins.diagnostics.mypy,
            -- nls.builtins.diagnostics.flake8,
        }
    end,
}
