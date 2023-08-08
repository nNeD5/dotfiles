-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby

-- TODO: Figure out why it doen't work
-- vim.g.loaded_matchparen = 1
-- vim.opt.wildignore = "__pycache__"
-- vim.opt.wildignore:append({ "*.o", "*~", "*.pyc", "*pycache*" })
-- vim.opt.wildignore:append({ "Cargo.lock", "Cargo.Bazel.lock" })

vim.syntax = false

vim.opt.autochdir = true

vim.opt.scrolloff = 999 -- keep cursor on cetner

-- Backups --
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"

-- Localization --
vim.opt.spelllang = { "en_us", "ru", "uk" }
vim.opt.langmap =
"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- highlighting --
vim.cmd([[ hi clear SpellBad ]])
vim.cmd([[ hi SpellBad cterm=underline ]])
vim.cmd([[ hi SpellBad gui=undercurl ]])
vim.cmd([[ hi clear SpellCap ]])
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.opt.cursorline = false

-- Tabs --
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cindent = true

-- Formatting --
vim.wo.wrap = true
vim.opt.linebreak = true
vim.opt.textwidth = 60
vim.opt.formatoptions = "cqnj"
-- vim.opt.conceallevel = 0

-- Foldings by treesitter --
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- vim.opt.formatoptions = vim.opt.formatoptions
--     - "a" -- Auto formatting is BAD.
--     - "t" -- Don't auto format my code. I got linters for that.
--     + "c" -- In general, I like it when comments respect textwidth
--     + "q" -- Allow formatting comments wigh gq
--     - "o" -- O and o, don't continue comments
--     - "r" -- But do continue when pressing enter.
--     + "n" -- Indent past the formatlistpat, not underneath it.
--     + "j" -- Auto-remove comments if possible.
--     - "2" -- I'm not in gradeschool anymore

-- Completion --
vim.o.completeopt = "menu,menuone,noselect"
