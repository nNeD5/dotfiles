local gfs = require("gears.filesystem")

local M = {}

M.terminal = "alacritty"
M.editor = "nvim"
M.editor_cmd = M.terminal .. " -e " .. M.editor
M.mods = {
	m = "Mod4",
	s = "Shift",
	c = "Control",
}
M.wallpapers = "/home/ned/Art/Pictures/"

return M
