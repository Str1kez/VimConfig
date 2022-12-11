local g = vim.g                 -- global variables
local opt = vim.opt             -- global/buffer/windows-scoped options

-----------------------------------------------------------
-- Главные
-----------------------------------------------------------
opt.colorcolumn = '120'              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang = { 'en_us', 'ru' }    -- Словари рус eng
opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = true           -- Вкл. относительную нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.undofile = true                 -- Возможность отката назад
opt.splitright = true               -- vertical split вправо
opt.splitbelow = true               -- horizontal split вниз
opt.mouse = 'a'                     -- enable mouse
opt.encoding = 'utf-8'
vim.api.nvim_command("set noswapfile")
opt.scrolloff = 7

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.fileformat = "unix"
vim.api.nvim_command("filetype indent on")

-- for tabulation
opt.smartindent = true
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2

g.netrw_banner = 0                  -- hide banner above files
g.netrw_liststyle = 3               -- tree instead of plain view
g.netrw_browse_split = 3 
