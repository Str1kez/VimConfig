vim.api.nvim_create_autocmd({ 'QuitPre' }, {
  pattern = '*.go',
  callback = function()
    vim.lsp.buf.format(nil, 3000)
  end
})

-- To get your imports ordered on save, like goimports does, you can define a helper function in Lua:

-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*.go',
--   callback = function()
--     vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
--   end
-- })
