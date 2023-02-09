vim.api.nvim_create_autocmd("QuitPre", {
    pattern = "*.rs",
    callback = function()
      vim.lsp.buf.format({ timeout_ms = 200 })
  end,
})
