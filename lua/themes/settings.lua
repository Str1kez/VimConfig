-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

opt.termguicolors = true      --  24-bit RGB colors
g.transparent_enabled = false

-- g.gruvbox_material_better_performance = 1
-- g.gruvbox_material_foreground = 'mix'
-- g.gruvbox_material_statusline_style = 'mix'
-- g.gruvbox_material_diagnostic_virtual_text = 'colored'
-- g.gruvbox_material_spell_foreground = 'colored'
-- g.gruvbox_material_diagnostic_text_highlight = 1
g.material_style = 'darker'
g.nord_italic = false

cmd'colorscheme sonokai' 
-- require('nord').set()
