local mapleader = ","
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}


map('i', 'jk', '<Esc>', {noremap = true})
map('', '<up>', ':echoe "Use k"<CR>', {noremap = true, silent = false})
map('', '<down>', ':echoe "Use j"<CR>', {noremap = true, silent = false})
map('', '<left>', ':echoe "Use h"<CR>', {noremap = true, silent = false})
map('', '<right>', ':echoe "Use l"<CR>', {noremap = true, silent = false})
map('n', ',f', '<cmd>Telescope find_files<CR>', {noremap = true})
map('n', ',g', '<cmd>Telescope live_grep<CR>', {noremap = true})
map('', 'gn', ':bn<cr>', default_opts)
map('', 'gp', ':bp<cr>', default_opts)
map('', 'gw', ':Bclose<cr>', default_opts)
map('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
map('n', ',<space>', ':nohlsearch<CR>', {noremap = true})
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)
map('v', '<C-y>', '"+y', {noremap = true})
