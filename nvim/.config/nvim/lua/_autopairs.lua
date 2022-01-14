local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
    print("Error: autopairs")
    return
end

local status_ok, Rule = pcall(require, "nvim-autopairs.rule")
if not status_ok then
    print("Error: autopairs rul")
    return
end

npairs.setup({
    check_ts = true,
    fast_wrap = {},
    enable_check_bracket_line = true,
})

local ts_conds = require('nvim-autopairs.ts-conds')
npairs.add_rule(Rule("$","$","tex"))
npairs.add_rule(Rule("\\[","\\]","tex"))
npairs.add_rules({
    Rule("$", "$", {"tex", "latex"})
})
