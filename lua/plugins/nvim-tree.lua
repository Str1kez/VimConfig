local on_attach = require "plugins.nvim-tree-on-attach"

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    on_attach = on_attach,
    view = {
      width = {
        max = 40,
      },
      adaptive_size = true,
    },
    renderer = {
      group_empty = true,
    },
    actions = {
      open_file = {
        resize_window = true,
      },
    },
    filters = {
      dotfiles = true,
    },
  }
)

