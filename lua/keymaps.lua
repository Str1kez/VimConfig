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
-- map('', 'gw', ':bw<cr>', default_opts)
map('n', 'gw', ':Bclose<cr>', default_opts)
map('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
map('n', ',<space>', ':nohlsearch<CR>', {noremap = true})
-- map('n', '<C-[>', ':NvimTreeFocus<CR>', default_opts)
map('n', '<C-J>', '<C-W><C-J>', {noremap = true})
map('n', '<C-K>', '<C-W><C-K>', {noremap = true})
map('n', '<C-L>', '<C-W><C-L>', {noremap = true})
map('n', '<C-H>', '<C-W><C-H>', {noremap = true})
map('v', '<C-y>', '"+y', {noremap = true})
