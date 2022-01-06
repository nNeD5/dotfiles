-- Load and config the colorscheme
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = true
vim.g.nord_italic = false

require('nord').set()

vim.cmd [[ hi clear SpellBad ]]
vim.cmd [[ hi SpellBad cterm=underline ]]
vim.cmd [[ hi SpellBad gui=undercurl ]]
vim.cmd [[ hi clear SpellCap ]]
