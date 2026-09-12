local opt = vim.opt
local g = vim.g

-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.colorcolumn = '120'
opt.cursorline = true
opt.spelllang = { 'en_us', 'ru' }
opt.number = true
opt.relativenumber = true
opt.scrolloff = 7
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.mouse = 'a'
opt.encoding = 'utf-8'
opt.swapfile = false
opt.fileformat = 'unix'

-----------------------------------------------------------
-- Отступы
-----------------------------------------------------------
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.list = true
opt.listchars:append('space:⋅')

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.softtabstop = 4
    vim.bo.shiftwidth = 4
  end,
})

-----------------------------------------------------------
-- Netrw (fallback-браузер файлов)
-----------------------------------------------------------
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_browse_split = 3
