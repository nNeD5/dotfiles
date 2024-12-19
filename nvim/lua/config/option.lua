vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.list = true
vim.opt.makeprg = "$*"
vim.opt.path:append("**")
-- vim.opt.wildchar = vim.api.nvim_replace_termcodes("<C-n>", true, true, true):byte()
vim.opt.signcolumn = "yes:1"
vim.opt.ruler = false
vim.opt.wildmode = "longest:full"
vim.opt.completeopt = "menuone,popup,noinsert,fuzzy"
vim.opt.grepprg = "rg --vimgrep"
-- vim.opt.wildmenu = true

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
vim.o.termguicolors = true

vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.diagnostic.config({
  virtual_text = false,
  severity_sort = true,
  update_in_insert = true,
  float = {
    source = "if_many"
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.HINT] = "",
      [vim.diagnostic.severity.INFO] = "",
    },
  }
})
