nvim_lsp.bashls.setup {
  on_attach = on_attach,
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true
      }
    }
  },
}
