local awful = require("awful")
local wibox = require("wibox")

-- Create a textbox widget to display the sound icon and volume
local sound_widget = wibox.widget.textbox()

-- Define the command to get the current system volume using pactl
local cmd = "wpctl get-volume @DEFAULT_AUDIO_SINK@"

local function to_percentage(x)
    local value = math.modf(x * 100)
    return " " .. tostring(value) .. "%"
end

-- Define the function to update the sound widget
local function update_sound_widget(widget)
    awful.spawn.easy_async_with_shell(cmd, function(stdout, stderr, reason, exit_code)
        local volume = tonumber(stdout:match("%d%p%d+"))
        if volume then
            widget:set_markup(to_percentage(volume))
        end
    end)
end

local update_timer = function(timeout)
    awful.widget.watch(cmd, timeout, function(widget, stdout, stderr, reason, exit_code)
        update_sound_widget(widget)
    end, sound_widget)
end

return {
    widget = sound_widget,
    start_update_timer = update_timer,
}
