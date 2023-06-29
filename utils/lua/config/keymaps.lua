-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
    local keys = require("lazy.core.handler").handlers.keys
    ---@cast keys LazyKeysHandler
    -- do not create the keymap if a lazy keys handler exists
    if not keys.active[keys.parse({ lhs, mode = mode }).id] then
        opts = opts or {}
        opts.silent = opts.silent ~= false
        vim.keymap.set(mode, lhs, rhs, opts)
    end
end

map("n", "go", "o<ESC>")
map("n", "gO", "O<ESC>")

-- VimWiki --
map("n", "<leader>on", ":VimwikiIndex <CR>")
map("n", "<leader>od", ":VimwikiMakeDiaryNote <CR>")
map("n", "<leader>oy", ":VimwikiMakeYesterdayDiaryNote <CR>")
map("n", "<leader>ot", ":VimwikiMakeTomorrowDiaryNote <CR>")
map("n", "<leader>oT", "<cmd>e ~/vimwiki/tasks/index.md <CR>")

-- -- toggle terminal
map("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
map("n", "<leader>ft", "<cmd>ToggleTerm size=10<CR>")

-- Keep cursor on cetner after search / move by half screen
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Disable LazyVim default --
vim.keymap.del("n", "<A-j>")
vim.keymap.del("n", "<A-k>")
vim.keymap.del("i", "<A-j>")
vim.keymap.del("i", "<A-k>")
vim.keymap.del("v", "<A-j>")
vim.keymap.del("v", "<A-k>")
vim.keymap.del("n", "<leader>fT")
