local pick_date_from_file_name = function(file_name)
    -- Example of input date format: 2023-04-22

    local date = {}
    for str in string.gmatch(file_name, "%d+") do
        table.insert(date, str)
    end
    local year = date[1]
    local month = date[2]
    local day = date[3]

    local time = os.time({ year = year, month = month, day = day, hour = 1 })
    local formated_date = os.date("%d-%A", time)
    return formated_date
end

local buffer_name = vim.fn.expand("%")
pick_date_from_file_name(buffer_name)

--- SKELETON ---
------------------------------
local output = "# " .. pick_date_from_file_name(buffer_name) .. [[


## TODO

## Reminders

## Notes
]]
----------------------------

print(output)
