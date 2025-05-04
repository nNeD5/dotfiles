-- vim.keymap.set("n", "<leader>w", "<cmd>writeCR>")
-- vim.keymap.set("n", ":", "q:i")

vim.keymap.set("v", "<leader>x", ":lua<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>luafile %<CR>")

vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>")

vim.keymap.set("t", "<C-t>", "<C-\\><C-n>")

vim.keymap.set("n", "m", "\'")
vim.keymap.set("n", "M", "m")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "P", '"_dP')
vim.keymap.set("n", "ycc", function()
  return "yy" .. vim.v.count1 .. "gcc']p"
end, { remap = true, expr = true })

vim.keymap.set("n", "<C-w>t", "<cmd>tabnew<CR>")

-- TODO: make for visual mode (https://www.reddit.com/r/neovim/comments/vu9atg/how_do_i_get_the_text_selected_in_visual_mode/)
vim.keymap.set("n", "gf", "<cmd>e <cfile><CR>")

vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-i>", "<C-i>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "*", "*zz")
vim.keymap.set("n", "#", "#zz")
vim.keymap.set("n", "g*", "g*zz")
vim.keymap.set("n", "g#", "g#zz")

vim.keymap.set("n", "grf", vim.lsp.buf.format)
vim.keymap.set("n", "gD", vim.diagnostic.setqflist)
