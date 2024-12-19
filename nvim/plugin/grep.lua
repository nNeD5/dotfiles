local function grep(...)
  local args = table.concat({ ... }, " ")
  local cmd = vim.fn.expandcmd(vim.o.grepprg .. " " .. args)
  return vim.fn.system(cmd)
end

-- Define commands for Grep and LGrep
vim.api.nvim_create_user_command("Grep", function(opts)
  vim.fn.setqflist({}, "r", { lines = vim.split(grep(unpack(opts.fargs)), "\n") })
  vim.cmd("cwindow")   -- Open the quickfix window if there are results
end, { nargs = "+", complete = "file_in_path" })

-- Command-line abbreviation for grep and lgrep
vim.cmd([[ cnoreabbrev <expr> grep (getcmdtype() ==# ':' && getcmdline() ==# 'grep')  ? 'Grep' : 'grep' ]])

-- Auto commands for opening quickfix and location windows
vim.api.nvim_create_autocmd("QuickFixCmdPost", {
  pattern = "cgetexpr",
  command = "cwindow",
})
