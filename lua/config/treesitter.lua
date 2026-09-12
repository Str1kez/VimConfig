local languages = {
  'lua', 'vim', 'vimdoc', 'query',
  'yaml', 'json', 'bash', 'markdown', 'markdown_inline',
  'python', 'go', 'rust', 'typescript', 'tsx', 'javascript',
  'html', 'css', 'dockerfile', 'toml',
}

require('nvim-treesitter').install(languages)

vim.api.nvim_create_autocmd('FileType', {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
