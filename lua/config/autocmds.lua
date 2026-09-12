-- Автосохранение: при потере фокуса или переключении буфера
vim.api.nvim_create_autocmd({ 'FocusLost', 'BufLeave' }, {
  callback = function()
    if vim.bo.modifiable and vim.bo.modified and vim.fn.bufname() ~= '' then
      vim.cmd('silent! update')
    end
  end,
})
