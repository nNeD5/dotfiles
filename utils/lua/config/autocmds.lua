-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufEnter", {
    command = "set fo=cqnj",
})

vim.api.nvim_create_autocmd("Filetype", {
    pattern = { "vimwiki", "markdown" },
    command = "set foldmethod=expr",
})
-- reset cursor
-- vim.api.nvim_create_autocmd("VimLeave, VimSuspend", {
--     command = [[set guicursor=a:hor10,a:blinkon20]],
-- })

-- =========
-- Vimwiki
-- ========
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "vimwiki" },
    command = "nnoremap <buffer> <leader>wc :VimwikiToggleListItem<CR>",
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "vimwiki" },
    command = "nnoremap <buffer> <leader>nd :VimwikiDeleteFile<CR>",
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "vimwiki" },
    command = "setlocal  spell",
})
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = vim.fn.expand("$HOME") .. "/vimwiki/diary/*.md",
    command = [[silen 0put =execute('luafile /home/ned/.config/nvim/templates/diary.lua') | norm gg"_dd]],
})
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = vim.fn.expand("$HOME") .. "/vimwiki/lang-point/hw-*.md",
    command = "silen 0r !lua " .. vim.fn.expand("$HOME") .. "/.config/nvim/templates/lang-point-hw.lua",
})

-- =========
-- Python
-- ========
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "python" },
    command = "set makeprg=python\\ %",
})

-- =========
-- Tex
-- ========
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.tex",
    command = "silen 0r !lua " .. vim.fn.expand("$HOME") .. "/.config/nvim/templates/latex.lua",
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex",
    command = "set makeprg=lualatex\\ -interaction=nonstopmode\\ -synctex=1\\ %",
})
