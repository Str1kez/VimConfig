-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

opt.termguicolors = true      --  24-bit RGB colors

g.sonokai_style = 'maia'
g.gruvbox_material_better_performance = 1
g.gruvbox_material_foreground = 'mix'
g.gruvbox_material_statusline_style = 'mix'
g.gruvbox_material_diagnostic_virtual_text = 'colored'
g.gruvbox_material_spell_foreground = 'colored'
g.gruvbox_material_diagnostic_text_highlight = 1
g.sonokai_better_performance = 1
g.material_theme_style = 'darker'
g.nord_italic = false
-- local my_colors = {
--     waveBlue1 = "#223045",
--     waveBlue2 = "#152338",
-- }
require'kanagawa'.setup({
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = false},
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = false},
    specialReturn = true,
    specialException = true,
    terminalColors = true,
  }
    -- colors = my_colors}
    )

-- cmd'colorscheme gruvbox-material' 
require('nord').set()
g.transparent_enabled = true 
