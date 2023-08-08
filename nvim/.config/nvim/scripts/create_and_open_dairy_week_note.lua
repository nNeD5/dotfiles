local DAIRY_PATH = vim.fn.expand("$HOME") .. "/Notes/dairy/"

function scandir(directory)
    local i, t, popen = 0, {}, io.popen
    local pfile = popen('ls "'..directory..'"')
    for filename in pfile:lines() do
        i = i + 1
        t[i] = filename
    end
    pfile:close()
    return t
end

local dir = DAIRY_PATH .. os.date("%Y/%m/%w/")
local file_path = dir .. "week_index.md"

local daily_notes_list = "# Daily notes\n"
for _, file in pairs(scandir(dir)) do
    if file ~= "week_index.md" then
        file = string.format("[%s](%s)\n", file, file)
        daily_notes_list = daily_notes_list .. "- ".. file
    end
end
daily_notes_list = daily_notes_list .. "\n# Week note"

local file_handler_read = io.open(file_path, "r")
local file_content = file_handler_read:read("*all")
local file_handler_write = io.open(file_path, "w")

if string.find(file_content, "# Daily notes.*# Week note") then
    file_content = file_content:gsub("# Daily notes.*# Week note", daily_notes_list)
else
    file_content = daily_notes_list
end
file_handler_write:write(file_content)
file_handler_read:close()
file_handler_write:close()

vim.cmd("edit" .. file_path)
vim.cmd("write ++p")

