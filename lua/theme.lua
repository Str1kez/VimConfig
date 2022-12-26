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
g.sonokai_better_performance = 1
g.material_theme_style = 'darker'
cmd'colorscheme gruvbox-material'
g.transparent_enabled = true
