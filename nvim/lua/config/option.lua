vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.opt.langmap = [[ФИСВУАПРШОЛДЬТЩЗЙКІЕГМЦЧНЯБЮЖЭХЪ;ABCDEFGHIJKLMNOPQRSTUVWXYZ______,фисвуапршолдьтщзйкіегмцчнябюж.эхъ;abcdefghijklmnopqrstuvwxyz___.___]]

vim.opt.signcolumn = "yes:1"
vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 3
vim.opt.winbar = "  %f%m%r%w"
vim.opt.statusline = [[%=%{% &ruler ? ( &rulerformat == '' ? '%-14.(%l,%c%V%) %P' : &rulerformat ) : '' %}]]

vim.opt.conceallevel = 2

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
vim.opt.shada = "!,'100,<50,s10,h"
vim.opt.viewoptions = "folds,cursor" -- default: "folds,cursor,curdir"


vim.opt.path:append("**")

vim.opt.wildmode = "longest:full"
vim.opt.completeopt = {"menu", "popup", "fuzzy"}

vim.opt.grepprg = "rg --vimgrep"
-- vim.opt.makeprg = "$*"

vim.cmd([[ cnoreabbrev ц w ]])
vim.g.tex_flavor = "latex"
