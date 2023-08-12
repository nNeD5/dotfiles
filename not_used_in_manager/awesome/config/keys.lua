local gears = require("gears")
local naughty = require("naughty")
local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local lain = require("lain")
local constants = require("constants")
local mods = constants.mods
local terminal = constants.terminal
local utils = require("utils")
local bind = utils.misc.bind

local quake = lain.util.quake({
    app = terminal,
    argname = [[--class %s --command nvim
                +VimwikiMakeDiaryNote
                +Calendar
                "+wincmd l"
                +"setlocal spell"
                +"lua timer = vim.loop.new_timer(); timer:start(50, 0, vim.schedule_wrap(function() vim.cmd 'edit' end))"]],
    name = "vimwiki-dairy",
    vert = "center",
    horiz = "center",
    width = 0.7,
    height = 0.7,
})

local popup_teminal = lain.util.quake({
    app = terminal,
    argname = "--class %s",
    name = "popup-terminal",
    vert = "top",
    horiz = "center",
    width = 0.4,
    height = 0.4,
})

local popup_tranlator = lain.util.quake({
    app = "crow",
    name = "crow-tranlate",
    argname = "",
    vert = "top",
    horiz = "center",
    width = 1,
    height = 0.3,
})

local GLOBAL_GROUPS = {
    awesome = {
        [mods.m] = {
            [mods.c] = {
                { key = "r", action = awesome.restart,         description = "reload awesome" },
                { key = "q", action = awesome.quit,            description = "quit awesome" },
                { key = "s", action = hotkeys_popup.show_help, description = "show help" },
            },
        },
    },
    client = {
        [mods.m] = {
            [""] = {
                {
                    key = "j",
                    action = bind(awful.client.focus.bydirection, { "down" }),
                    description = "focus bottom window",
                },
                {
                    key = "k",
                    action = bind(awful.client.focus.bydirection, { "up" }),
                    description = "focus upper index",
                },
                {
                    key = "l",
                    action = bind(awful.client.focus.bydirection, { "right" }),
                    description = "focus right window",
                },
                {
                    key = "h",
                    action = bind(awful.client.focus.bydirection, { "left" }),
                    description = "focus left window",
                },
                {
                    key = "u",
                    action = awful.client.urgent.jumpto,
                    description = "jump to urgent client",
                },
            },

            [mods.s] = {
                {
                    key = "u",
                    action = function()
                        local c = awful.client.focus.history.list[2]
                        client.focus = c
                        local t = client.focus and client.focus.first_tag or nil
                        if t then
                            t:view_only()
                        end
                        c:raise()
                    end,
                    description = "jump to previous client",
                },
                {
                    key = "j",
                    action = bind(awful.client.swap.bydirection, { "down" }),
                    description = "swap bottom client",
                },
                {
                    key = "k",
                    action = bind(awful.client.swap.bydirection, { "up" }),
                    description = "swap up client",
                },
                {
                    key = "l",
                    action = bind(awful.client.swap.bydirection, { "right" }),
                    description = "swap right client",
                },
                {
                    key = "h",
                    action = bind(awful.client.swap.bydirection, { "left" }),
                    description = "swap left client",
                },
            },
        },
    },
    launcher = {
        [mods.m] = {
            [""] = {
                {
                    key = "o",
                    action = bind(awful.spawn, { "rofi -show window -window-thumbnail" }),
                    description = "open window switcher",
                },
                {
                    key = "r",
                    action = bind(awful.spawn, { "rofi -show drun -show-icons" }),
                    -- action = bind(awful.spawn, { "dmenu_run" }),
                    description = "open apps",
                },
                {
                    key = "Return",
                    action = bind(awful.spawn, { terminal }),
                    description = "open terminal",
                },
                {
                    key = "w",
                    action = bind(awful.spawn, { "brave" }),
                    description = "open web browser(brave)",
                },
                {
                    key = "d",
                    action = function()
                        quake:toggle()
                    end,
                    description = "open floating dairy",
                },
                {
                    key = "n",
                    action = function()
                        popup_teminal:toggle()
                    end,
                    description = "open floating terminal",
                },
                {
                    key = "e",
                    action = bind(awful.spawn, { "nemo" }),
                    description = "open nemo(file explorer)",
                },
                {
                    key = "b",
                    action = bind(awful.spawn, { "rofi-bluetooth" }),
                    description = "run rofi-bluetooth",
                },
                {
                    key = "p",
                    action = bind(
                        awful.spawn,
                        { [[rofi -modi 'clipboard:greenclip print' -show clipboard  -run-command '{cmd}' ]] }
                    ),
                    description = "run clipboard manager",
                },
                {
                    key = "a",
                    -- action = bind(awful.spawn, { "crow" }),
                    action = function()
                        popup_tranlator:toggle()
                    end,
                    description = "popup transator",
                },
            },
        },
    },
    tag = {
        [mods.m] = {
            [""] = {
                -- { key = "p", action = awful.tag.viewprev, description = "view previous" },
                -- { key = "n", action = awful.tag.viewnext, description = "view next" },
            },
        },
    },
    layout = {
        [mods.m] = {
            [mods.s] = {
                {
                    key = "f",
                    action = function()
                        if awful.layout.get(mouse.screen) == awful.layout.suit.floating then
                            awful.layout.set(awful.layout.suit.tile.right)
                        else
                            awful.layout.set(awful.layout.suit.floating)
                        end
                    end,
                    description = "toggle float layout",
                },
            },
            [mods.c] = {
                {
                    key = "k",
                    action = bind(awful.tag.incnmaster, { 1, nil, true }),
                    description = "increase the number of master clients",
                },
                {
                    key = "j",
                    action = bind(awful.tag.incnmaster, { -1, nil, true }),
                    description = "decrease the number of master clients",
                },
            },
        },
    },
    others = {
        [mods.m] = {
            [""] = {
                -- 	{
                -- 	    key = "y",
                -- 	    action = utils.volume.increase,
                -- 	    description = "increase volume"
                -- 	},
                {
                    key = "s",
                    action = bind(awful.spawn, { "flameshot gui" }),
                    description = "take screenshot",
                },
            },
        },
        [""] = {
            [""] = {
                { key = "Print", action = bind(awful.spawn, { "flameshot gui" }), description = "take screenshot" },
                { key = "Print", action = bind(awful.spawn, { "flameshot gui" }), description = "take screenshot" },
                -- { key = "XF86AudioRaiseVolume", action = utils.volume.increase, description = "increase volume" },
                -- { key = "XF86AudioRaiseVolume", action = utils.volume.increase, description = "increase volume" },
                -- { key = "XF86AudioLowerVolume", action = utils.volume.decrease, description = "decrease volume" },
                -- { key = "XF86AudioMute", action = utils.volume.toggle, description = "toggle mute" },
                -- FIXME: Doesn't work (!?)
                -- {
                -- 	key = "XF86MonBrightnessUp",
                -- 	action = bind(awful.spawn, { "brightnessctl set +10%" }),
                -- 	description = "increase brightness",
                -- },
                -- {
                -- 	key = "XF86MonBrightnessDown",
                -- 	action = bind(awful.spawn, { "brightnessctl set 10%-" }),
                -- 	description = "decrease brightness",
                -- },
            },
        },
    },
}

local CLIENT_GROUPS = {
    client = {
        [mods.m] = {
            [""] = {
                {
                    key = "Up",
                    action = function(c)
                        if c.floating then
                            c:relative_move(0, 0, 0, -10)
                        else
                            awful.client.incwfact(0.025)
                        end
                    end,
                    description = "increase bottom window size",
                },
                {
                    key = "Down",
                    action = function(c)
                        if c.floating then
                            c:relative_move(0, 0, 0, 10)
                        else
                            awful.client.incwfact(-0.025)
                        end
                    end,
                    description = "increase above window size",
                },
                {
                    key = "Left",
                    action = function(c)
                        if c.floating then
                            c:relative_move(0, 0, -10, 0)
                        else
                            awful.tag.incmwfact(-0.025)
                        end
                    end,
                    description = "increase left window size",
                },
                {
                    key = "Right",
                    action = function(c)
                        if c.floating then
                            c:relative_move(0, 0, 10, 0)
                        else
                            awful.tag.incmwfact(0.025)
                        end
                    end,
                    description = "increase right window size",
                },
                {
                    key = "t",
                    action = function(c)
                        c.ontop = not c.ontop
                    end,
                    description = "toggle keep on top",
                },
                {
                    key = "m",
                    action = function(c)
                        c.fullscreen = not c.fullscreen
                        local cur_tag = client.focus and client.focus.first_tag or nil
                        for _, cls in ipairs(cur_tag:clients()) do
                            -- minimize all windows except the focused one
                            if c.window ~= cls.window then
                                cls.hidden = not cls.hidden
                            end
                        end
                        c:raise()
                    end,
                    description = "toggle fullscreen",
                },
                {
                    key = "q",
                    action = function(c)
                        c:kill()
                    end,
                    description = "close",
                },
                {
                    key = "f",
                    -- action = awful.client.floating.toggle,
                    action = function(c)
                        c.floating = not c.floating
                    end,
                    description = "toggle floating",
                },
            },
            [mods.c] = {
                {
                    key = "m",
                    action = function(c)
                        c.maximized = not c.maximized
                        c:raise()
                    end,
                    description = "toggle maximize",
                },
            },
        },
    },
}

local function apply_mappings(groups)
    local ret = {}
    for group, mappings in pairs(groups) do
        for mod, submappings in pairs(mappings) do
            for submod, keys in pairs(submappings) do
                for _, key in ipairs(keys) do
                    local modkey = {}
                    if mod ~= "" then
                        table.insert(modkey, mod)
                        if submod ~= "" then
                            table.insert(modkey, submod)
                        end
                    end

                    ret[#ret + 1] =
                        awful.key(modkey, key.key, key.action, { description = key.description, group = group })
                end
            end
        end
    end

    return ret
end

local global_keys = apply_mappings(GLOBAL_GROUPS)
local client_keys = apply_mappings(CLIENT_GROUPS)

globalkeys = gears.table.join(table.unpack(global_keys))
clientkeys = gears.table.join(table.unpack(client_keys))

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = gears.table.join(
        globalkeys,
        -- View tag only.
        awful.key({ mods.m }, "#" .. i + 9, function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                tag:view_only()
            end
        end, { description = "view tag #" .. i, group = "tag" }),
        -- Toggle tag display.
        awful.key({ mods.m, mods.c }, "#" .. i + 9, function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                awful.tag.viewtoggle(tag)
            end
        end, { description = "toggle tag #" .. i, group = "tag" }),
        -- Move client to tag.
        awful.key({ mods.m, mods.s }, "#" .. i + 9, function()
            if client.focus then
                local tag = client.focus.screen.tags[i]
                if tag then
                    client.focus:move_to_tag(tag)
                end
            end
        end, { description = "move focused client to tag #" .. i, group = "tag" }),
        -- Toggle tag on focused client.
        awful.key({ mods.m, mods.c, mods.s }, "#" .. i + 9, function()
            if client.focus then
                local tag = client.focus.screen.tags[i]
                if tag then
                    client.focus:toggle_tag(tag)
                end
            end
        end, { description = "toggle focused client on tag #" .. i, group = "tag" })
    )
end

clientbuttons = gears.table.join(
    awful.button({}, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
    end),
    awful.button({ mods.m }, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
        awful.mouse.client.move(c)
    end),
    awful.button({ mods.m }, 3, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
        awful.mouse.client.resize(c)
    end)
)

root.keys(globalkeys)
