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
local my_colors = {
    waveBlue1 = "#415D87",
    waveBlue2 = "#4970AC",
}
require'kanagawa'.setup({
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = false},
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = false},
    colors = my_colors}
    )

cmd'colorscheme kanagawa' 
g.transparent_enabled = true
