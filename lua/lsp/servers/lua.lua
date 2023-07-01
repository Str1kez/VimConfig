nvim_lsp.lua_ls.setup {
  on_attach = on_attach,
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true
      }
    }
  },
}
