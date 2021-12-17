require("surround").setup {
  context_offset = 100,
  load_autogroups = false,
  mappings_style = "sandwich",
  map_insert_mode = false,
  quotes = {"'", '"'},
  brackets = {"(", '{', '['},
  pairs = {
    nestable = {{"(", ")"}, {"[", "]"}, {"{", "}"}},
    linear = {{"'", "'"}, {"`", "`"}, {'"', '"'}}
  },
  prefix = "c"
}

local OPENING = 1
local CLOSING = 2

local function map(mode, key, cmd)
    vim.api.nvim_set_keymap(mode, key, cmd, { noremap = true })
end

-- Insert Mode Ctrl-S mappings
for _, pair in ipairs(table.merge(vim.g.surround_pairs.nestable, vim.g.surround_pairs.linear)) do
	map("i", "<A-s>" .. pair[OPENING], pair[OPENING] .. pair[CLOSING] .. "<left>")
	map("i", "<A-s>" .. pair[OPENING] .. " ", pair[OPENING] .. "  " .. pair[CLOSING] .. "<left><left>")
	map("i", "<A-s>" .. pair[OPENING] .. "<A-s>", pair[OPENING] .. "<cr>" .. pair[CLOSING] .. "<esc>O")
end
