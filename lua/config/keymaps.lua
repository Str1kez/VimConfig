vim.g.mapleader = ','

local map = vim.keymap.set
local silent = { noremap = true, silent = true }

-- Esc
map('i', 'jk', '<Esc>', { noremap = true })

-- Буферы
map('n', 'gn', ':bn<CR>', silent)
map('n', 'gp', ':bp<CR>', silent)
map('n', 'gw', function()
  local target = vim.api.nvim_get_current_buf()
  if vim.bo[target].modified then
    vim.notify('No write since last change for buffer ' .. target .. ' (use :bdelete!)', vim.log.levels.WARN)
    return
  end
  for _, win in ipairs(vim.fn.win_findbuf(target)) do
    vim.api.nvim_win_call(win, function()
      local alt = vim.fn.bufnr('#')
      if alt > 0 and vim.fn.buflisted(alt) == 1 and alt ~= target then
        vim.cmd('buffer #')
      else
        pcall(vim.cmd, 'bprevious')
      end
      if vim.api.nvim_win_get_buf(win) == target then
        vim.cmd('enew')
      end
    end)
  end
  vim.cmd('bdelete ' .. target)
end, silent)

-- Поиск
map('n', ',f', '<cmd>FzfLua files<CR>', { noremap = true })
map('n', ',g', '<cmd>FzfLua live_grep<CR>', { noremap = true })
map('n', ',<space>', ':nohlsearch<CR>', { noremap = true })

-- Терминал
map('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Окна
map('n', '<C-J>', '<C-W><C-J>', { noremap = true })
map('n', '<C-K>', '<C-W><C-K>', { noremap = true })
map('n', '<C-L>', '<C-W><C-L>', { noremap = true })
map('n', '<C-H>', '<C-W><C-H>', { noremap = true })

-- Буфер обмена
map('v', '<C-y>', '"+y', { noremap = true })

-- Дерево файлов
map('n', '<C-e>', '<cmd>NvimTreeToggle<CR>', silent)
