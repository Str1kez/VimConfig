local null_ls = require("null-ls")

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.diagnostics.eslint,
    -- null_ls.builtins.code_actions.eslint,
  },
  on_attach = on_attach,
}
