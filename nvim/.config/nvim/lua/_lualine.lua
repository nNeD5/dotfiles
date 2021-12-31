-- can't name file lualine
-- Lualine

-- custom theme, based on nord
local colors = {
  nord1  = '#3B4252',
  nord3  = '#4C566A',
  nord5  = '#E5E9F0',
  nord6  = '#ECEFF4',
  nord7  = '#8FBCBB',
  nord8  = '#88C0D0',
  nord13 = '#EBCB8B',
}

local function my_nord() return {
  normal = {
    a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
    b = { fg = colors.nord5, bg = colors.nord1 },
    c = { fg = colors.nord5, bg = colors.nord3 },
  },
  insert = { a = { fg = colors.nord1, bg = colors.nord6, gui = 'bold' } },
  visual = { a = { fg = colors.nord1, bg = colors.nord7, gui = 'bold' } },
  replace = { a = { fg = colors.nord1, bg = colors.nord13, gui = 'bold' } },
  inactive = {
    a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
    b = { fg = colors.nord5, bg = colors.nord1 },
    c = { fg = colors.nord5, bg = colors.nord1 },
  },
}
end

require"lualine".setup {
  options = {
    icons_enabled = false,
    theme = my_nord(),
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {'filename', 'location'},
    lualine_x = {"os.date('%H:%M')"},
    lualine_y = {'encoding', 'filetype'},
    lualine_z = {''}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- icons
require'nvim-web-devicons'.setup {}

