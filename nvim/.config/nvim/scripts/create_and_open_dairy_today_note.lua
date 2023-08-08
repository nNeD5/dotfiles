local DAIRY_PATH = vim.fn.expand("$HOME") .. "/Notes/dairy/"
local today_date = os.date("%Y/%m/%w/%d")
local file_path = DAIRY_PATH .. today_date .. ".md"
vim.cmd("edit" .. file_path)
vim.cmd("write ++p")
