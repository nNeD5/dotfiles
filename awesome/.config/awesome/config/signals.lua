local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local utils = require("utils")
local naughty = require("naughty")

screen.connect_signal("property::geometry", utils.ui.set_wallpaper)

client.connect_signal("manage", function(c)
    c.shape = utils.ui.rounded_rect()
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    if awesome.startup and not c.size_hints.user_position and not c.size_hints.program_position then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

client.connect_signal("property::floating", function(c)
    if c.floating then
        c.ontop = true
    else
        c.ontop = false
    end
end)

client.connect_signal("property::fullscreen", function(c)
    c.shape = gears.shape.rectangle
end)

client.connect_signal("focus", function(c)
    c.border_color = beautiful.border_focus
end)

client.connect_signal("unfocus", function(c)
    c.border_color = beautiful.border_normal
end)

-- https://stackoverflow.com/a/51687321
-- Hide border when there is only one client
screen.connect_signal("arrange", function(s)
    local only_one = #s.tiled_clients == 1
    for _, c in pairs(s.clients) do
        if only_one and not c.floating or c.maximized or c.fullscreen then
            c.border_width = 0
        else
            c.border_width = beautiful.border_width -- your border width
        end
    end
end)

-- Unity repaint fix
---------------------------------------------------------------
last_focus = nil
unity_force_repaint = true
client.connect_signal("focus", function(c)
    if not c then
        return
    end -- that can happen :/

    -- This is needed to have Unity on one screen and some utility panels on another
    -- without constantly repainting whenever the user switches back and forth
    if
        not unity_force_repaint
        and last_focus
        and last_focus.valid
        and last_focus.tag == c.tag
        and awful.rules.match(last_focus, { class = "Unity" })
    then
        last_focus = c
        return
    end
    last_focus = c
    unity_force_repaint = false

    if not awful.rules.match(c, { class = "Unity" }) then
        return
    end
    if awful.rules.match(c, { rule_any = { type = { "dialog", "popup", "popup_menu" } } }) then
        return
    end -- Ignore these types of windows
    if awful.rules.match(c, { name = "Select" }) then
        return
    end

    -- The workaround
    -- note: gears.timer.delayed_call doesn't not seem to work for this
    c.fullscreen = false
    gears.timer.start_new(1 / 60, function() -- 0 doesn't always work in every case
        c.fullscreen = true
    end)
end)

tag.connect_signal("property::selected", function()
    unity_force_repaint = true
end)

-- turn titlebar on when client is floating
-----------------------------------------------------------------------------
-- client.connect_signal("property::floating", function(c)
--   if c.floating and not c.requests_no_titlebar then
--     awful.titlebar.show(c)
--   else
--     awful.titlebar.hide(c)
--   end
-- end)

-- SWALLOWING --

local table_is_swallowed = { "Alacritty", }
local table_cannot_swallow = { "Dragon" }

local function is_in_Table(table, element)
    for _, value in pairs(table) do
        if element:match(value) then
            return true
        end
    end
    return false
end

local function is_to_be_swallowed(c)
    return (c.class and is_in_Table(table_is_swallowed, c.class)) and true or false
end

local function can_swallow(class)
    return not is_in_Table(table_cannot_swallow, class)
end

local function copy_size(c, parent_client)
    if (not c or not parent_client) then
        return
    end
    if (not c.valid or not parent_client.valid) then
        return
    end
    c.x = parent_client.x;
    c.y = parent_client.y;
    c.width = parent_client.width;
    c.height = parent_client.height;
end

local function check_resize_client(c)
    if (c.child_resize) then
        copy_size(c.child_resize, c)
    end
end

local function get_parent_pid(child_ppid, callback)
    local ppid_cmd = string.format("ps -o ppid= -p %s", child_ppid)
    awful.spawn.easy_async(ppid_cmd, function(stdout, stderr, reason, exit_code)
        -- primitive error checking
        if stderr and stderr ~= "" then
            callback(stderr)
            return
        end
        local ppid = stdout:gsub(" ", ""):gsub("\n", "")
        callback(nil, ppid)
    end)
end

client.connect_signal("property::size", check_resize_client)
client.connect_signal("property::position", check_resize_client)
client.connect_signal("manage", function(c)
    if is_to_be_swallowed(c) then
        return
    end
    local parent_client = awful.client.focus.history.get(c.screen, 1)
    get_parent_pid(c.pid, function(err, ppid)
        if err then
            error(err)
            return
        end
        parent_pid = ppid
        get_parent_pid(parent_pid, function(err, gppid)
            if err then
                error(err)
                return
            end
            grand_parent_pid = gppid
            if parent_client and (parent_pid:find('^' .. parent_client.pid) or grand_parent_pid:find('^' .. parent_client.pid)) and is_to_be_swallowed(parent_client) and can_swallow(c.class) then
                parent_client.child_resize = c
                parent_client.minimized = true
                c:connect_signal("unmanage", function() parent_client.minimized = false end)
                -- c.floating=true
                copy_size(c, parent_client)
            end
        end)
    end)
end)
