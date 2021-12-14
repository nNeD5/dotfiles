local cmd = vim.cmd             -- execute vim commants
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped optionsv(like set)

-- Standart
opt.termguicolors = true
opt.spelllang = {'en_us', 'ru', 'uk'}
opt.spell = true
opt.number = true
opt.relativenumber = true
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.mouse='a'
-- don't auto commenting new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Tabulates and Ppasing
opt.expandtab = true            -- use space instead of tabs
opt.shiftwidth = 4              -- shift 4 spaces when tab
opt.tabstop = 4                 -- 1 tab = 4 space
opt.smartindent = true          -- auto indent new lines

-- Зпоминает где nvim последний раз редактировал файла
cmd [[
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]

-- Подсвечивает на доли секунды скопированную часть текста
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

-- auto delete trailing spaces when write
cmd [[ autocmd BufWritePre * :%s/\s\+$//e ]]

-- Load and config the colorscheme
g.nord_contrast = true
g.nord_borders = false
g.nord_disable_background = true
g.nord_italic = false
require('nord').set()
cmd [[ hi clear SpellBad ]]
cmd [[ hi SpellBad cterm=underline ]]
cmd [[ hi SpellBad gui=undercurl ]]
cmd [[ hi clear SpellCap ]]

