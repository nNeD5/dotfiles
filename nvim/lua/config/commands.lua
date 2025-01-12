vim.api.nvim_create_user_command("Cdc", function() vim.cmd.lcd("%:p:h") end, {})
vim.api.nvim_create_user_command("DiagnosticToggle",
  function()  vim.diagnostic.enable(not vim.diagnostic.is_enabled()) end, {}
)


local myGroup = vim.api.nvim_create_augroup("myGroup", { clear = true })
my_group = vim.api.nvim_create_
vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  group = my_group,
  pattern = { "*.*" },
  desc = "save view (folds), when closing file",
  command = "mkview",
})
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  group = my_group,
  pattern = { "*.*" },
  desc = "load view (folds), when opening file",
  command = "silent! loadview",
})
vim.api.nvim_create_autocmd({ "LspAttach" }, {
  group = my_group,
  desc = "Disable diagnotic",
  callback = function()
    vim.diagnostic.enable(false)
  end,
})
