local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gears = require("gears")
local naughty = require("naughty")
local constants = require("constants")
local utils = require("utils")

local theme = {}

theme.transparent = "#00000000"
theme.font = "JetBrains Mono Nerd Font Bold 12"

theme.black = "#000"
theme.red = "#E46876"
theme.yellow = "#F2D98C"
theme.orange = "#FFA066"
theme.green = "#A8C98F"
theme.white = "#D3D3D3"
theme.blue = "#145DA0"
theme.blue_borders_focus = "#0000FF"

theme.main = theme.blue

-- bg
-- theme.bg_normal = theme.black
theme.bg_normal = theme.black
theme.bg_focus = theme.blue_borders_focus
theme.bg_urgent = theme.red
theme.bg_systray = theme.bg_normal

-- fg
theme.fg_normal = theme.white
theme.fg_focus = theme.yellow
theme.fg_urgent = theme.white

-- spacing
theme.spacing = dpi(8)
theme.spacing_md = dpi(12)
theme.spacing_lg = dpi(16)
theme.spacing_xl = dpi(20)

-- border
theme.useless_gap = dpi(3)
theme.border_width = dpi(2)
theme.border_radius = dpi(0)
-- theme.border_focus = theme.bg_focus
theme.border_focus = theme.blue_borders_focus
theme.border_normal = theme.main

-- taglist
-- theme.taglist_bg = theme.bg_normal
theme.taglist_bg = theme.transparent
theme.taglist_bg_focus = theme.main
theme.taglist_bg_urgent = theme.red
theme.taglist_fg_focus = theme.bg_normal
theme.taglist_fg_occupied = theme.main

-- wallpaper
-- theme.wallpaper = gears.surface.load_uncached(constants.wallpapers .. "thumb-1920-905239.png")
theme.wallpaper = gears.wallpaper.set("#000000")

-- bar
theme.bar_height = dpi(50)

-- system tray
theme.systray_icon_spacing = theme.spacing
theme.systray_max_rows = 7

-- ********************************* --
--
--              Naughty
--
-- ********************************* --

local nc = naughty.config
nc.defaults.margin = theme.spacing_lg
nc.defaults.shape = utils.ui.rounded_rect()
nc.defaults.timeout = 3
nc.padding = theme.spacing
nc.padding = theme.spacing_xl
nc.presets.critical.bg = theme.red
nc.presets.critical.fg = theme.bg_normal
nc.presets.low.bg = theme.bg_normal
nc.presets.normal.bg = theme.main
nc.presets.normal.fg = theme.bg_normal
nc.spacing = theme.spacing

-- ********************************* --
--
--              Widgets
--
-- ********************************* --

-- calendar
theme.calendar_fg_header = theme.fg_normal
theme.calendar_fg_focus = theme.bg_normal
theme.calendar_fg_weekday = theme.main
theme.calendar_fg = theme.fg_normal
theme.calendar_bg = theme.bg_normal
theme.calendar_bg_focus = theme.main

return theme
