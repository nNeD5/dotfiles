local map = vim.api.nvim_set_keymap

-- go to normal from insert with fast jj or ii
map('i', 'jj', '<Esc>', {})
map('i', 'ii', '<Esc>', {})

-- auto correct on cntrl + l
map('i', '<C-l>', '<c-g>u<Esc>[s1z=`]a<c-g>', {silent = true})

map('n', '<space><space>', ':set nohlsearch!<CR>', {})
map('n', 'go', 'o<Esc>', {silent = true})
map('n', 'gO', 'O<Esc>', {silent = true})
map('n', '<Up>', ':resize -2<CR>', {silent = true})
map('n', '<Down>', ':resize +2<CR>', {silent = true})
map('n', '<Right>', ':vertical resize +2<CR>', {silent = true})
map('n', '<Left>', ':vertical resize -2<CR>', {silent = true})

map('n','S', ':%s///g<Left><Left><Left>', {})
map('c', '<C-w>', '\\<\\><Left><Left>', {})

map('', '<s-h>', '^', {silent = true})
map('', '<s-l>', '$', {silent = true})



-- latex compile and preview
vim.cmd [[ autocmd FileType tex  nnoremap <buffer> \lv :TexlabForward<CR> ]]
vim.cmd [[ autocmd FileType tex  nnoremap <buffer> \lc :!latexmk %<CR> ]]
