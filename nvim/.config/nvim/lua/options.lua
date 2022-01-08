local cmd = vim.cmd             -- execute vim commants
local exec = vim.api.nvim_exec  -- execute Vimscript
local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped optionsv(like set)

-- Standart
opt.termguicolors = true
opt.spelllang = {'en_us', 'ru', 'uk'}
-- opt.spell = true
opt.number = true
opt.relativenumber = true
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.mouse = 'a'
opt.autochdir = true
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.pumheight = 12 -- popum menu len
opt.signcolumn = "yes"
opt.wildmode = "longest,list,full"

-- Tabulates and Ppasing
opt.expandtab = true            -- use space instead of tabs
opt.shiftwidth = 4              -- shift 4 spaces when tab
opt.tabstop = 4                 -- 1 tab = 4 space
opt.softtabstop = 4
-- opt.smartindent = true          -- auto indent new lines
-- don't auto commenting new lines

cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]


-- Зпоминает где nvim последний раз редактировал файла
cmd [[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]

-- Подсвечивает на доли секунды скопированную часть текста
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

-- Automatically deletes all trailing whitespace and newlines at end of file on save & reset cursor position
cmd [[ autocmd BufWritePre * let currPos = getpos(".") ]]
cmd [[ autocmd BufWritePre * %s/\s\+$//e ]]
cmd [[ autocmd BufWritePre * %s/\n\+\%$//e ]]
cmd [[ autocmd BufWritePre *.[ch] %s/\%$/\r/e ]]
cmd [[ autocmd BufWritePre * cal cursor(currPos[1], currPos[2]) ]]

-- Automatically reload snippy on write
cmd [[ autocmd BufWritePre *.snippet[s] SnippyReload ]]

-- check spell in markdown files
cmd [[ autocmd BufNewFile,BufRead *.md setlocal spell ]]


-- LATEX
g.tex_flavor = 'latex'  -- for clear recognize latex file

-- VIM WIKI
cmd [[ let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}] ]]
