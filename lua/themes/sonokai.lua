local g = vim.g
local cmd = vim.cmd

-- g.sonokai_style = 'andromeda'
g.sonokai_better_performance = 1
g.sonokai_diagnostic_virtual_text = 'colored'
g.sonokai_diagnostic_line_highlight = 1
cmd([[let g:sonokai_colors_override = {'bg0': ['#22262e', '230'], 'bg3': ['#595f6f', '236']}]])
