vim.lsp.config('*', {
  capabilities = require('blink.cmp').get_lsp_capabilities(),
})

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
    },
  },
})

vim.lsp.config('jsonls', {
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
      validate = { enable = true },
    },
  },
})

vim.lsp.config('yamlls', {
  settings = {
    yaml = {
      schemaStore = { enable = true },
      schemas = {
        kubernetes = { '**/k8s/**/*.yaml', '**/manifests/**/*.yaml', '**/kubernetes/**/*.yaml', '*.k8s.yaml' },
      },
    },
  },
})

vim.lsp.enable({ 'lua_ls', 'yamlls', 'jsonls', 'bashls', 'marksman' })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { buffer = event.buf, noremap = true, silent = true }
    local map = vim.keymap.set

    map('n', 'gD', vim.lsp.buf.declaration, opts)
    map('n', 'gd', vim.lsp.buf.definition, opts)
    map('n', 'K', vim.lsp.buf.hover, opts)
    map('n', 'gi', vim.lsp.buf.implementation, opts)
    map('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    map('n', '<space>D', vim.lsp.buf.type_definition, opts)
    map('n', '<space>rn', vim.lsp.buf.rename, opts)
    map('n', '<space>ca', vim.lsp.buf.code_action, opts)
    map('n', 'gr', vim.lsp.buf.references, opts)
    map('n', '<space>e', vim.diagnostic.open_float, opts)
    map('n', '[d', function() vim.diagnostic.jump({ count = -1 }) end, opts)
    map('n', ']d', function() vim.diagnostic.jump({ count = 1 }) end, opts)
    map('n', '<space>q', vim.diagnostic.setloclist, opts)
    map('n', 'gf', function() vim.lsp.buf.format({ async = true }) end, opts)
  end,
})
