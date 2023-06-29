return {
    "hrsh7th/nvim-cmp",
    -- opts = function(_, opts)
    --     local cmp = require("cmp")
    --     opts.window.completion = cmp.config.window.completion(vim.list_extend(
    --         opts.window.completion,
    --         { {
    --             border = "single",
    --         } }
    --     ))
    -- end,
    opts = {
        completion = {
            -- keyword_length = 3,
        },
        --- disable ghost text
        experimental = { ghost_text = false },
        window = {
            completion = {
                border = "single",
                scrollbar = "",
                winhighlight = "Normal:None,FloatBorder:None,Search:None",
            },
            documentation = {
                border = "single",
                scrollbar = "",
                winhighlight = "Normal:None,FloatBorder:None,Search:None",
            },
        },
    },
}
