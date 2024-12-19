return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    local nvim_tmux_nav = require("nvim-tmux-navigation")
    vim.keymap.set("n", "<C-w>h", nvim_tmux_nav.NvimTmuxNavigateLeft)
    vim.keymap.set("n", "<C-w>j", nvim_tmux_nav.NvimTmuxNavigateDown)
    vim.keymap.set("n", "<C-w>k", nvim_tmux_nav.NvimTmuxNavigateUp)
    vim.keymap.set("n", "<C-w>l", nvim_tmux_nav.NvimTmuxNavigateRight)
    vim.keymap.set("n", "<C-w><C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
    vim.keymap.set("n", "<C-w><C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
    vim.keymap.set("n", "<C-w><C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
    vim.keymap.set("n", "<C-w><C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
  end
}
