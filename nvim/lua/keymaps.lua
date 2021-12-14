local map = vim.api.nvim_set_keymap
local opt = vim.opt             -- global/buffer/windows-scoped optionsv(like set)

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

