nvim_lsp.dockerls.setup {
  on_attach = on_attach,
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true
      }
    }
  },
}
