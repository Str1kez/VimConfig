local rt = require("rust-tools")

rt.setup({
  tools = {
    runnables = {
      use_telescope = true,
    },
    inlay_hints = {
      only_current_line = true
    }
  },
  server = {
    on_attach = on_attach,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy",
        }
      }
    }
  },
})
