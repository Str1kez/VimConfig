nvim_lsp.tsserver.setup{
  on_attach = function (client, buffnr) 
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    on_attach(client, buffnr)
  end,
}

nvim_lsp.stylelint_lsp.setup{
  on_attach = on_attach,
  filetypes = {
    "css", "less", "scss", "sugarss",
  },
}

