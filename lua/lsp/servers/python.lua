nvim_lsp.pyright.setup {
  on_attach = function(client, buffnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    on_attach(client, buffnr)
  end,
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true
      }
    }
  },
  flags = {
    debounce_text_changes = 150,
  }
}
