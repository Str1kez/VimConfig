-----------------------------------------------------------
-- Цветовая схема
-----------------------------------------------------------
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

opt.termguicolors = true      --  24-bit RGB colors
cmd'colorscheme nord'
g.material_theme_style = 'ocean'
g.transparent_enabled = true
